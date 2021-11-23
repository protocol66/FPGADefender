

NUM_WORDS = 65536
BITS_PER_WORD = 6
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

with open('rom1.mif', 'w') as f:
    for s in START_MSG:
        f.write(s + '\n')

    f.write('\n')

    for i in range(NUM_WORDS):
        s = f"{to_pad_hex(i, 4)} : 111111;\n"
        f.write(s)

    f.write('\n')
    f.write("END;")
