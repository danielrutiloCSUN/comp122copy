# Exam #2: Formats and Encodings
Date: Nov 20 & Nov 21, 2023
Time:
  - Monday: 9:00 - 10:15
  - Tuesday: 9:00 - 10:15

Version: VHVlc2RheTogMTI6MDAK

---
### Name: {Daniel Rutilo}
### GitHub Account: {danielrutiloCSUN}

Directions:
You have already copied this file (assignment.md) to a file called "submission.md".  Take steps to commit and push your work regularly. (You never know when a technical issue might arise that prevents you from doing so.)

Note that the bias for binary32 is 127 (2# 0111 1111).

You should also take care to format all you answers so that they are easy to understand, etc.  Add appropriate spacing, use appropriate punctuation for clarity, remove or add response lines as needed. Note that the curl brace notation (e.g., {answer}) have been placed in text to highlight where your answers should be placed. That is to say, you need to replace these notations with your response.

Your final submission MUST be professionally presentable when viewed via the Sublime Text editor and a markdown viewer. Run the command `make` to validate your submission and to review your final response key.  


#### Conversion between Powers of 2

  - Convert the following numbers to the identified associated base: 
    1. 8# 175316 == {16# FACE}                      <!-- response -->
    1. 16# FACE  == {8# 175316}                     <!-- response -->
    1. 4# 1000   == {2# 0100 0000}                  <!-- response -->


#### Convert the `10# 0.4004` into a binary number that contains at most 5 digits. 
  - Show your work--you will not get credit otherwise!

  ```response
  number =  4004
  max    =  10 ** |4004| == 10000

  4004 * 2 = 8008                 -> 0
  8008 * 2 = 16016 - 10000 = 6016 -> 1
  6016 * 2 = 12032 - 10000 = 2032 -> 1
  2032 * 2 = 4064                 -> 0
  4064 * 2 = 8128                 -> 0


  answer:  2# 0.01100  
  ```

#### Convert  `10# 106` into a binary number. 
  - Show your work--you will not get credit otherwise!

  ```response
  number = 106
                  Remainder
  106 / 2 = 53   -> 0
  53 / 2  = 26   -> 1
  26 / 2  = 13   -> 0
  13 / 2  = 6    -> 1
  6  / 2  = 3    -> 0
  3  / 2  = 1    -> 1
  1 / 2   = 0    -> 1


  answer: 2# 0110 1010
  ```

#### Floating Point
The following binary string purports to represent a floating point number encoded as a binary32.

  ```text
  1100 0100 0011 1011 0110 1110 1010 1111 
  ```

  1. How many fields are there in the binary32 encoding?
     * number: {3}                                  <!-- response -->

  1. Enumerate the names of these fields from left to right
     * {Sign (1)}                                     <!-- response -->
     * {Exponent (8)}                                 <!-- response -->
     * {Mantissa (23)}                                <!-- response -->

  1. Use the following template to identify the number of bits in each field 

     * | x | xxxxxxxx | xxxx xxxx xxxx xxxx xxxx xxx |   <!-- response -->

     Yes, you need to modify the template above to provide your answer.


  1. Decode each of the individual fields.
     * {Sign (1)}: {1}                                 <!-- response -->
     * {Exponent (8)}: {1000 0111}                     <!-- response -->
     * {Mantissa (23)}: {0111 0110 1101 1101 0101 111} <!-- response -->


  1. Present the decoded value in Scientific Notation
     * scientific-notation: {2# - 1.01110110110111010101111 x 2^1000 /8}                <!-- response -->



#### UTF-8 Format
The following is a two byte UTF-8 value.  
   ```
   1100100010101010
   ```

  1. Modify the following bit sequence to identify just the framing bits. Simply replace each framing bit with the letter 'f'.
     - framing bits: | fff0 1000 | ff10 1010 |          <!-- response -->

  1. Modify the following bit sequence to identify just the data bits. Simply replace each data bit with the letter 'd':
     - data bits:    | 110d dddd | 10dd dddd |          <!-- response -->


  1. Copy the data bits to form a binary number, and then convert the binary number to a hexadecimal number:
     - 2# {2# 0010 0010 1010}                            <!-- response -->
     - 16# {16# 022A}                                     <!-- response -->

  1. What is the UTF-8 index for the given two byte sequence
     - U+ {8 42}                                      <!-- response -->

  
#### Whole Number Encodings
Provide the 8-bit encoding for each following numbers and associated encodings

  1.  106: {0110 1010}  : unsigned integer                  <!-- response -->
  1.  106: {0110 1010}  : 1's complement                    <!-- response -->
  1.  106: {0110 1010}  : 2's complement                    <!-- response -->
  1. -106: {0110 1010}  : unsigned integer                  <!-- response -->
  1. -106: {1001 0101}  : 1's complement                    <!-- response -->
  1. -106: {1001 0110}  : 2's complement                    <!-- response -->
  1.  127: {0111 1111}  : unsigned integer                  <!-- response -->
  1. -127: {1000 0000}  : 1's complement                    <!-- response -->
  1. -127: {1000 0001}  : 2's complement                    <!-- response -->   


#### Binary Addition/Subtraction
Solve the following addition/subtraction problems using 8-bit binary arithmetic. Show your work by modifying the template provided.

  1. 106 + 127 = 2# {1110 1001}                           <!-- response --> 
     ```response
     0 1111  1100 
       0110  1010 
     + 0111  1111 
     ------  ---- 
     0 1110  1001 
     ```
  
  1. -106 - 127 = 2# {1 0001 0111}                         <!-- response --> 
     ```response
     1 0000  0000 
       1001  0110 
     + 1000  0001 
     ------  ---- 
     1 0001  0111 
     ```

#### Base64
When converting a binary string to base64, each 24-bit sequence (which is 3 bytes in length) is converted into 4 6-bit values.  Then each 6-bit value is mapped onto an ASCII character.

For this problem you need to isolate the third 6-bit sequence (from left-to-right).  

The following steps are used to achieve the desired results:

  * Let $t0 hold the desired 3-byte sequence: 0x32F3AA.
  * Let $t1 hold an appropriate value to isolate the third 6-bit sequence.
  * Perform the following operation:  and $t2, $t0, $t1
  * Perform the following operation:  srl $t3, $t2, X

Modifying the register templates below to reflect the value in each of these registers.
Then provide the answers related to $t1, X, and $t3.

  1. $t0: 0000 0000 0011 0010 1111 0011 1010 1010       <!-- response -->
  1. $t1: 0000 0000 0000 0000 0000 1111 1100 0000       <!-- response -->
  1. $t2: 0000 0000 0000 0000 0000 0011 1000 0000       <!-- response -->
  1. $t3: 0000 0000 0000 0000 0000 0000 0000 1110       <!-- response -->

  1. hexadecimal value of $t1: {0x0FC0}                 <!-- response -->
  1. hexadecimal value of $t3: {0x0380}                 <!-- response -->
  1. decimal value of X: {6}                       <!-- response -->

