from PIL import Image
import numpy as np
import argparse


NUM_WORDS = 65536
HEX_PER_WORDS = 4
BITS_PER_WORD = 12
IMAGE_COLOR_BITS = 4    #bits per subpixel

START_MSG = [f"DEPTH = {NUM_WORDS};",       \
             f"WIDTH = {BITS_PER_WORD};",   \
              "ADDRESS_RADIX = HEX;",       \
              "DATA_RADIX = BIN;",                \
              "CONTENT",                    \
              "BEGIN"]

def to_pad_hex(hex_in, size):
        s = hex(hex_in)[2:]
        size -= len(s)
        return "0"*size + s

def to_pad_bin(bin_in, size):
        s = bin(bin_in)[2:]
        size -= len(s)
        return "0"*size + s


def write_mem_file(img_list, file):
    with open(file, 'w') as f:
        for s in START_MSG:
            f.write(s + '\n')

        f.write('\n')

        mem_addr = 0
        for img in img_list:
            for data in np.nditer(img):
                if(mem_addr == NUM_WORDS):
                    print("RAN OUT OF MEMORY")
                    break;

                s = f"{to_pad_hex(mem_addr, HEX_PER_WORDS)} : {to_pad_bin(data, BITS_PER_WORD)};\n"
                mem_addr += 1
                f.write(s)

        if(mem_addr < NUM_WORDS):
            f.write("\n")
            f.write(f"[{to_pad_hex(mem_addr, HEX_PER_WORDS)}..{'f'*HEX_PER_WORDS}] : {'0'*BITS_PER_WORD};\n")  #pad the rest with zeros

        f.write('\n')
        f.write("END;")

def process_image(image_file, size, show_img=False):
    image = Image.open(image_file)

    print(f"Loaded image: {image_file}")
    print(f"Format: {image.format}")
    print(f"Color : {image.mode} -> RGB")
    print(f"Resizing image: {image.size} -> {size}")
    print(f"Quantizing image: {2**IMAGE_COLOR_BITS} colors per subpixel")

    image = image.resize(size)
    image = image.convert("RGB")        # some images have more than 3 channels

    #show non-downscaled image
    if show_img:
        image.show()

    image_array = np.array(image)
    image_array = image_array / (255.0 / (2**IMAGE_COLOR_BITS))  # downscale colors
    image_array = np.array(image_array, dtype=np.int32)
    image_array = np.clip(image_array, 0, (2**IMAGE_COLOR_BITS)-1)

    #show downscaled image
    if show_img:
        image = Image.fromarray(np.array(image_array*(255.0 / (2**IMAGE_COLOR_BITS)), dtype=np.int8), "RGB")
        image.show()

    comp_array = np.empty((image_array.shape[0], image_array.shape[1]), dtype=np.int32)
    for i in range(image_array.shape[0]):
        for j in range(image_array.shape[1]):
            comp_array[i][j] = (image_array[i][j][0] << IMAGE_COLOR_BITS*2) + (image_array[i][j][1] << IMAGE_COLOR_BITS*1) + (image_array[i][j][2] << IMAGE_COLOR_BITS*0)

    return comp_array


def read_img_list_file(file):
    imgs = []

    with open(file, 'r') as f:
        for line in f:
            line = line.strip()
            if line:
                line.replace(" ", "")
                name = line.split("=")[0]
                name = name.replace(" ", "")
                size = line.split("=")[1]
                x_size = int(size.split(",")[0][2:])
                y_size = int(size.split(",")[1][:-1])
                imgs.append([name, (x_size, y_size)])

    return imgs

def write_const_file(name_list, offset_list, file):
    with open(file, "w") as f:

        for i in range(len(name_list)):
            basename = name_list[i][0].split(".")[0]
            basename = basename.upper()
            rom_id = 0
            x_size = name_list[i][1][0]
            y_size = name_list[i][1][1]
            mem_offset = offset_list[i]

            string = f"constant {basename}_BITMAP : bit_map_t := bit_map_t'({0}, {mem_offset}, {x_size}, {y_size});"
            f.write(string + '\n')



parser = argparse.ArgumentParser(description='Convert image to vhdl code')
parser.add_argument("-i", "--img_list", required=True,action="store")
parser.add_argument("-rom", "--rom_out_file", required=True, action="store")
parser.add_argument("-c", "--constants_out_file", required=True, action="store")
args = parser.parse_args()

img_list = read_img_list_file(args.img_list)
proc_img_list = []
mem_offset_list = []
mem_count = 0

for img in img_list:
    mem_offset_list.append(mem_count)
    print('-'*40)
    proc_img = process_image(img[0], img[1])
    mem_count += proc_img.size
    proc_img_list.append(proc_img)

print('-'*40)
print(f"Total words used: {mem_count-1}")
print('-'*40)

write_mem_file(proc_img_list, args.rom_out_file)
write_const_file(img_list, mem_offset_list, args.constants_out_file)