# Base Conversion and Floating Point Representation

## Name:  Daniel Rutilo                               <!-- response -->
## GitHub Account: danielrutiloCSUN                   <!-- response -->

## Problems:


### Scientific Notation Representation
Represent each number in Scientific Notation:
  1. 2# - 10010.11001
      base10 18.78125  
     > -1.878125x10^1                                        <!-- response -->

  1. 8#  0.00034237
      
     > 8.63969326x10^-4                                      <!-- response -->

  1. 16#  4E1.212
       base 10 1249.129395  
     > 1.25x10^3                                      <!-- response -->

### Converting from Scientific Notation
Represent each number in normal form:

1. -1.010010010  x 2^ 101 
   > -101001.0010                                           <!-- response -->

1. 4.34 x 8^ -3
   > .00434                                                <!-- response -->

1. 1.ABC2 x 16^ 3
   > 1ABC.2                                                 <!-- response -->
 

### Base Conversion of Real Numbers
Represent each of the following numbers as a binary real.  <br>
(Yes, it is really that simple!)

  1. 8# 0.00434  
     > 0.000000100011100                           <!-- response -->

  1. 16#  1ABC.2 
     > 1101010111100.0010                          <!-- response -->
  

### Floating Point Representation
For each of the problem, perform the following steps:
  * Convert the number (as necessary) to a binary real
  * Represent the number in Scientific Notation (using base 2)
  * Represent the number in IEEE binary16 format
  * Represent the number in IEEE binary32 format

Note: you may use the following conversion calculator
  * https://www.csun.edu/~steve/classes/integers-conversion-encoding/integer-conversion.html


#### 8# 345.23  
For Example:

  1. Base 2: 
     * 110 100 101 . 010 111                              <!-- response --> 

  1. Scientific Notation: 
     * 2# 1.10 100 101 010 111 x 2^ 1000  // 8            <!-- response --> 

  1. IEEE Binary16: 
     * | x | x xxxx | xxxx xxxx xx |                     
     * | 0 | 1 0111 | 1010 0101 01 |                      <!-- response --> 
     * 8 + 15 = 23 -> 1 0111                              <!-- response -->

  1. IEEE Binary32:
     * | x | xxxx xxxx | xxxx xxxx xxxx xxxx xxxx xxx |
     * | 0 | 1000 0111 | 1010 0101 0101 1100 0000 000 |   <!-- response -->
     * 8 + 127 = 135 -> 1000 0111                         <!-- response -->


### 2#  - 0.000000101010  
  1. Base 2: 
     * -0.000000101010                                   <!-- response -->
 
  1. Scientific Notation: 
     * -1.0101 x 2^ -0111  // -7                           <!-- response -->

  1. IEEE Binary16:
     * | x | x xxxx | xxxx xxxx xx |                     
     * | 1 | 0 1000 | 0101 0000 00 |                      <!-- response -->
     * -7 + 15  = 8 -> 0 1000                              <!-- response -->

  1. IEEE Binary32:
     * | x | xxxx xxxx | xxxx xxxx xxxx xxxx xxxx xxx |
     * | 1 | 0111 1000 | 0101 0000 0000 0000 0000 000 |   <!-- response -->
     * -7 + 127 = 120 ->  0111 1000                        <!-- response -->

### 16#  1AB.C2 
  1. Base 2: 
     * 1 1010 1011 . 1100 0010                             <!-- response -->
 
  1. Scientific Notation: 
     * 1.101010111100001 x 2^ 1000 // 8                   <!-- response -->

  1. IEEE Binary16:
     * | x | x xxxx | xxxx xxxx xx |                     
     * | 0 | 1 0111 | 1010 1011 11 |                   <!-- response -->
     * 8 + 15 = 23 -> 1 0111                            <!-- response -->

  1. IEEE Binary32:
     * | x | xxxx xxxx | xxxx xxxx xxxx xxxx xxxx xxx |
     * | 0 | 1000 0111 | 1010 1011 1100 0010 0000 000 |   <!-- response -->
     * 8 + 127 = 135 ->  1000 0111                        <!-- response -->


### 16#  - 242.324345
  1. Base 2: 
     * -10 0100 0010 . 0011 0010 0100 0011 0100 0101  <!-- response -->
 
  1. Scientific Notation:             
     * -1.0010000100011 x 2^ 1001 // 9                 <!-- response -->

  1. IEEE Binary16:
     * | x | x xxxx | xxxx xxxx xx |                     
     * | 1 | 1 1000 | 0010 0001 00 |                   <!-- response -->
     *  9 + 15 = 24 -> 1 1000                          <!-- response -->

  1. IEEE Binary32:
     * | x | xxxx xxxx | xxxx xxxx xxxx xxxx xxxx xxx |
     * | 1 | 1000 1000 | 0010 0001 0001 1001 0010 000 |  <!-- response -->
     *  9 + 127 = 136 -> 1000 1000

### 8#  - 342.324345674 

  1. Base 2: 
     * -011 100 010 . 011 010 100 011 100 101 110 111 100 <!-- response -->
 
  1. Scientific Notation: 
    *  -1.11000100110101 x 2^ 0111 // 7                 <!-- response -->

  1. IEEE Binary16:
     * | x | x xxxx | xxxx xxxx xx |                     
     * | 1 | 1 0110 | 1100 0100 11 |                      <!-- response -->
     * 7 + 15 = 22 -> 1 0110                              <!-- response -->

  1. IEEE Binary32:
     * | x | xxxx xxxx | xxxx xxxx xxxx xxxx xxxx xxx |
     * | 1 | 1000 0110 | 1100 0100 1101 0100 0111 001 |   <!-- response -->
     * 7 + 127 = 134 -> 1000 0110                         <!-- response -->

## Resources: 
  * [Encoding to Float](encode_float.md)

