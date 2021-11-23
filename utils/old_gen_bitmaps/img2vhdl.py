from PIL import Image
import numpy as np
import argparse

parser = argparse.ArgumentParser(description='Convert image to vhdl code')
parser.add_argument("-i", "--input_file", required=True,action="store")
parser.add_argument("-x", "--sizeX", required=True, type=int, action="store")
parser.add_argument("-y", "--sizeY", required=True, type=int, action="store")
parser.add_argument("-o", "--output_file", required=False, default="gen_code.txt",action="store")

args = parser.parse_args()

IMAGE_FILE = args.input_file
OUTPUT_FILE = args.output_file

IMAGE_SIZE_X = args.sizeX
IMAGE_SIZE_Y = args.sizeY

IMAGE_COLORS = 4

image = Image.open(IMAGE_FILE)

print(f"Loaded image: {IMAGE_FILE}")
print(f"Format: {image.format}")
print(f"Color : {image.mode} -> RGB")
print(f"Resizing image: {image.size} -> ({IMAGE_SIZE_Y},{IMAGE_SIZE_X})")
print(f"Quantizing image: {IMAGE_COLORS} colors per subpixel")

image = image.resize((IMAGE_SIZE_X, IMAGE_SIZE_Y))
image = image.convert("RGB")        # some images have more than 3 channels

#show non-downscaled image
# image.show()

image_array = np.array(image)
image_array = image_array / (255.0 / IMAGE_COLORS)  # downscale colors
image_array = np.array(image_array, dtype=np.int16)
image_array = np.clip(image_array, 0, IMAGE_COLORS-1)

#show downscaled image
image = Image.fromarray(np.array(image_array*(255.0 / IMAGE_COLORS), dtype=np.int8), "RGB")
# image.show()


def gen_column_string(array):

    master_column_list = []

    u, indices_r, count = np.unique(array, axis=0,return_inverse=True, return_counts=True)

    for i in range(len(count)):
        list_indices = np.where(indices_r==i)

        col_string = np.array2string(list_indices[0])
        col_string = col_string.replace("[ ", "")
        col_string = col_string.replace("[", "")
        col_string = col_string.replace("]", "")
        col_string = col_string.replace(" ]", "")

        col_string = col_string.replace("  ", "|")
        col_string = col_string.replace(" ", "|")
        

        col_string += " "
        col_string += "=>"
        col_string += " "

        col_string +=  "Pixel_t" + "(" + "\"" + bin(u[i][0])[2:] + "\"" + "," + "\"" + bin(u[i][1])[2:] + "\"" + "," + "\"" + bin(u[i][2])[2:] + "\"" + ")"
        col_string = col_string.replace("\"0\"", "\"00\"")  # python will shorten b01 to b1, so unshorten it
        col_string = col_string.replace("\"1\"", "\"01\"")
        
        master_column_list.append(col_string)

    # master_column_list.append("others => BLACK")
    master_column_string = str(master_column_list)
    master_column_string = master_column_string.replace("\'", "")
    master_column_string = master_column_string.replace("\\n", "")
    master_column_string = master_column_string.replace(" |", " ")
    master_column_string = master_column_string.replace("||", " ")

    master_column_string = master_column_string.replace("Pixel_t", "Pixel_t'")
    master_column_string = master_column_string.replace("[", "(")
    master_column_string = master_column_string.replace("]", ")")

    
    return master_column_string


master_row_string = "("
for i in range(image_array.shape[0]):
    master_row_string += f"{i} => "
    master_row_string += gen_column_string(image_array[i])
    master_row_string += ",\n"
    
# master_row_string += "others => (others => BLACK)"
master_row_string = master_row_string[0:-2]
master_row_string += ");"


with open(OUTPUT_FILE, "w") as file:
    file.write(master_row_string)
