import builtins
from PIL import Image
import numpy as np

IMAGE_FILE = 'utils/test_image.png'
IMAGE_SIZE_X = 100
IMAGE_SIZE_Y = 100
IMAGE_COLORS = 16

image = Image.open(IMAGE_FILE)

print(f"Loaded image: {IMAGE_FILE}")
print(f"Format: {image.format}")
print(f"Color : {image.mode}")
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

# for debuging
# print(image_array.shape)
# print(np.min(image_array))
# print(np.max(image_array))
# print(image_array)

#show downscaled image
image = Image.fromarray(np.array(image_array*(255 / IMAGE_COLORS), dtype=np.int16), "RGB")
# image.show()

# print(np.max(image_array))
# print(bin(image_array[0][2]))


# u, indices_r, count = np.unique(image_array[0], axis=0,return_inverse=True, return_counts=True)
# print(u)
# print(indices_r)
# print(count)
# print("")

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

        col_string +=  "Pixel_t" + "(" + "X\"" + hex(u[i][0])[2:] + "\"" + "," + "X\"" + hex(u[i][1])[2:] + "\"" + "," + "X\"" + hex(u[i][2])[2:] + "\"" + ")"
        
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

# print(master_row_string)

with open("utils/gen_code.txt", "w") as file:
    file.write(master_row_string)

    