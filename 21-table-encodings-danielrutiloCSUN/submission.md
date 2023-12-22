# Table Encodings:
---
### Name: Daniel Rutilo                               <!-- response -->
### GitHub Account: danielrutiloCSUN                  <!-- response -->

## Questions

### Bit-Stream Separation

1. Consider the following bit sequence
 
   ```
   01011010 10101011 11010111 11110101 10110110 11010100
   ```

   Separate the bit sequence into appropriate sized chunks for each of the following domains. (You do NOT have to decode this bit sequence.)

   1. Octal String:
      * 010 110 101 010 101 111 010 111 111 101 011 011 011 011 010 100        <!-- response -->
   1. Hex String:                                      
      * 0101 1010 1010 1011 1101 0111 1111 0101 1011 0110 1101 0100       <!-- response -->
   1. Base64 String:                                   
      * 01 0110 10 1010 10 1111 01 0111 11 1101 01 1011 01 1011 01 0100                 <!-- response -->


1. Before we send a message over the network, we send a string of binary digits to announce our intent.  This string is composed of 14 hexadecimal digits (7 octets), each with the value of "16# AA".  This string is then immediately followed by the Start of Frame (SOF) deliminator, which is a 8-bit value of "16# AB".  We then can proceed with sending our message.

   1. For each of the following question, provide the binary string...
      1. What is the binary bit pattern of the preamble?
        - 1010 1010 1010 1010 1010 1010 1010 1010 1010 1010 1010 1010 1010 1010        <!-- response -->
      1. What is the binary bit pattern of the SOF deliminator?
        - 1010 1011        <!-- response -->

### Encoding for Powers of 2
For each of the following number, encoding them into a binary string. 

  1. 16# AA AA AA AB 00 00  (Hexadecimal)
     - 2#  1010 1010 1010 1010 1010 1010 1010 1011 0000 0000 0000 0000

  1. 16# FACE (Hexadecimal)
     - 2# 1111 1010 1100 1110                       <!-- response -->

  1. 8# 5673 (Octal)
     - 2# 101 110 111 011                           <!-- response -->

  1. 16# 1011 (Hexidecimal)
     - 2# 0001 0000 0001 0001                       <!-- response -->

  1. 8# 10101011 (Octal)
     - 2# 001 000 001 000 001 000 001 001           <!-- response -->
 
  1. 2# 10101110 11101010 01011101  (Binary)
     - 2# 10101110 11101010 01011101                <!-- response -->

  1. 4# 1010101 (Quaternary)
     - 2# 01 00 01 00 01 00 01                      <!-- response -->

  <!-- Did the Professor talk about base 4?  No, but you should be able to solve it anyways! -->

### Decoding into Powers of 2
For each of the following binary strings, decode them into the identified based number.

  1. 2#  00101110 10010101 01100010
     - 8# 13512542                                       <!-- response -->
     - 16# 2E 95 62                                      <!-- response -->

  1. 2#  11011010 00110101 00000110
     - 8# 66432406                                       <!-- response -->
     - 16# DA 35 06                                      <!-- response -->

  1. 2#  00010010 10101001 01011011
     - 8# 04524533                                       <!-- response -->
     - 16# 12 A9 5B                                      <!-- response -->
     - 4#  12 22 21 11 23                                   <!-- response -->

### ASCII Encodings
Use the ASCII table to encode the following character strings as a hexidecimal number.

  1. Example
     - 0x 45 78 61 6d 70 6c 65
  1. Hello
     - 48 65 6C 6C 6F                                          <!-- response -->
  1. Easy
     - 45 61 73 79                                         <!-- response -->
  1. Pie
     - 50 69 65                                          <!-- response -->

### ASCII Decodings
Use the ASCII table to decode the following binary string into a character string.
(I was not sure which way to write it so I put both.)
  1. 0x 4865 6c6c 6f20 576f 726c 6421 0a00
     - Hello World!                                        <!-- response -->
     - HellospWorld!\0\n\0\0                             <!-- response -->
     

###  MIPS encodings
Use the encoding tables associate with MIPS, complete the following problems.

  1. Provide the 5-bit encodings for the following registers:
     - $at : 00001    <!-- response -->
     - $a1 : 00101         <!-- response -->
     - $fp : 11110         <!-- response -->
     - $t0 : 01000         <!-- response -->
     - $13 : 01101         <!-- response -->

  1. Provide the 6-bit encodings for the following operations:
     - j :     00 0010          <!-- response -->
     - jal :   00 0011         <!-- response -->
     - beq :   00 0100        <!-- response -->
     - lw :    10 0011        <!-- response -->
     - addi :  00 1000        <!-- response -->
 
  1. Provide the 6-bit encoding for the following functions:
     - add :      10 0000         <!-- response -->
     - and :      10 0100         <!-- response -->
     - jalr :     00 1001       <!-- response -->
     - sll :      00 0000        <!-- response -->
     - syscall :  00 1100     <!-- response -->
   

### Resources
  1. Fix Length Encodings: https://docs.google.com/spreadsheets/d/1eUNgDk746G9y_BstasdvrxU6iA7T5FdsiBWwvo0TH7M/edit#gid=0
  1. MIPS Encodings: https://docs.google.com/spreadsheets/d/1r9cj9x71JBVv3En-cOYanqRW4zSz53oSXLlScOparqY/edit#gid=0
  1. Keyboard Encodings: https://docs.google.com/spreadsheets/d/1eJCdUuydOccLiJcQDYv-PRZVd6jbiM67V7GPXYJYqAs/edit#gid=0
