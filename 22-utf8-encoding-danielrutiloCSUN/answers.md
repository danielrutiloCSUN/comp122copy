# UTF-8 Encoding:
---
### Name:  Partial Answer Key            <!-- response -->
### GitHub Account:                      <!-- response -->

Note full answer key to be provided later.


## Questions

### Unicode to UTF-8 [Encoding](encode_utf.md)
1. Convert the following Unicode Characters into binary:
   1. U+0920
      -                                   <!-- response -->
   1. U+0042
      -                                   <!-- response -->
   1. U+5555
      -                                   <!-- response -->

1. Determine the number of bytes needed to encode the following values
   1. U+0920
      - 3 bytes                           <!-- response -->
   1. U+0042
      - 1 byte                            <!-- response -->
   1. U+5555
      - 3 bytes                           <!-- response -->

1. Provide the UTF-8 binary encoding for the following values:
   1. U+0920
      -                                  <!-- response -->
   1. U+0042
      -                                  <!-- response -->
   1. U+5555
      -                                  <!-- response -->

1. Provide the UTF-8 hex encoding for the following values:
   1. U+0920
      - 2# 1110 0000  1010 0100  1010 0000
      -                                 <!-- response -->
   1. U+0042
      - 2# 0000 0000 0100 0010 
      -                                 <!-- response -->
   1. U+5555
      - 2# 1110 0101 1001 0101 1001 0101  
      -                                 <!-- response -->

### Unicode to UTF-8 [Decoding](decode_utf.md)

Consider the following binary string:
```
01011101111010011010001110110001100001011101000110110010
```

1. Chunk the binary string into bytes:
   -                                  <!-- response -->
   -                                  <!-- response -->
   -                                  <!-- response -->
   -                                  <!-- response -->
   -                                  <!-- response -->
   -                                  <!-- response -->
   -                                  <!-- response -->

1. Gather together the bytes need for each UTF-8 character:
   -                                  <!-- response -->
   -                                  <!-- response -->
   - error                            <!-- response -->
   -                                  <!-- response -->

1. Unpack the payload from each of the UTF-8 characters:
   -                                 <!-- response -->
   -                                 <!-- response -->
   -                                 <!-- response -->

1. Decode each of the resulting binary values into hexadecimal:
   - 0x5D    <!-- response -->
   - 0x98F1  <!-- response -->
   - 0x0472  <!-- response -->




