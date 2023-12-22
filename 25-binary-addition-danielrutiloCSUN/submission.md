# Binary Addition & Subraction:
### Name: Daniel Rutilo                  <!-- response -->
### GitHub Account: danielrutiloCSUN      <!-- response -->


## Questions

### Complements
Provide the 1's complement and 2 complement encodings for the following numbers.
(You can limit your answer to 8-bit encodings.)

1. -5

   - 1's: 1111 1010           <!-- response -->
   - 2's: 1111 1011           <!-- response -->

1. -22
   - 1's: 1110 1001           <!-- response -->
   - 2's: 1110 1010           <!-- response -->

1. 123
   - 1's: 0111 1011           <!-- response -->
   - 2's: 0111 1011           <!-- response -->

1. -2
   - 1's: 1111 1101           <!-- response -->
   - 2's: 1111 1110           <!-- response -->

1. -105
   - 1's: 1001 0110           <!-- response -->
   - 2's: 1001 0111           <!-- response -->


1. -122
   - 1's: 1000 0101           <!-- response -->
   - 2's: 1000 0110           <!-- response -->


### Binary Addition

Solve the following addition problems using binary arithmetic. Show your work by modifying the template provided.

1. 7 + 8:  
   ```
   0 0000 0000               <!-- response: carries -->
     0000 0111               <!-- response: op1 encoding -->
   + 0000 1000               <!-- response: op2 encoding -->
   ------ ----           
   0 0000 1111               <!-- response: sum encoding -->
   ```

1. 113 + 127: 
   ```
   0 1111  1110              <!-- response: carries -->
     0111  0001              <!-- response: op1 encoding -->
   + 0111  1111              <!-- response: op2 encoding -->
   ------  ----          
   0 1111  0000              <!-- response: sum encoding -->
   ```

1. 112 - 12: 
   ```
   1 1110  0000              <!-- response: carries -->
     0111  0000              <!-- response: op1 encoding -->
   + 1111  0100              <!-- response: op2 encoding -->
   ------  ----          
   1 0110  0100 // drops leading 1 <!-- response: sum encoding -->
   ```

1. -22 + 22: 
   ```
   1 1111  1100              <!-- response: carries -->
     1110  1010              <!-- response: op1 encoding -->
   + 0001  0110              <!-- response: op2 encoding -->
   ------  ----          
   1 0000  0000 //drops leading 1 <!-- response: sum encoding -->
   ```


### Status Bits:
Provide the values of the CPU's status bits after the each of the following additions.  (Note you calulate these additions in the previous section:

1. 113 + 127 
  - C: 0         <!-- response -->
  - V: 1         <!-- response -->
  - S: 0         <!-- response -->
  - Z: 0         <!-- response -->

1. -22 + 22
  - C: 1         <!-- response -->
  - V: 0         <!-- response -->
  - S: 0         <!-- response -->
  - Z: 1         <!-- response -->


### Conversion from Base 16, 8, 2 -> Decimal
1. Convert the following numbers to their base10 equivalent, using the left-to-right method.
Make sure you format your answers well!<br>
(Don't worry about the missing &lt;!-- response: --&gt; tags)

   1. 2# 1010 1101 

   | v      | = | v    | *  2   + |  digit |  glyph  | 
   |--------|---|----- |----------|--------|---------| 
   |   1    | = |  0   | *  2   + |   1    |    1    |    
   |   2    | = |  1   | *  2   + |   0    |    0    |    
   |   5    | = |  2   | *  2   + |   1    |    1    |    
   |   10   | = |  5   | *  2   + |   0    |    0    |    
   |   21   | = |  10  | *  2   + |   1    |    1    |    
   |   43   | = |  21  | *  2   + |   1    |    1    |
   |   86   | = |  43  | *  2   + |   0    |    0    |
   |   173  | = |  86  | *  2   + |   1    |    1    |


   1. 8# 12131          
  
   | v      | = | v    | * 8    + |  digit |  glyph  | 
   |--------|---|----- |----------|--------|---------| 
   |   1    | = |  0   | * 8    + |   1    |   1     | 
   |   10   | = |  1   | * 8    + |   2    |   2     | 
   |   81   | = |  10  | * 8    + |   1    |   1     | 
   |   651  | = |  81  | * 8    + |   3    |   3     | 
   |   5209 | = |  651 | * 8    + |   1    |   1     | 

   1. 16# 28B1    

   | v      | = | v    | * 16   + |  digit |  glyph  | 
   |--------|---|----- |----------|--------|---------| 
   |  2     | = |  0   | * 16   + |    2   |    2    | 
   |  40    | = |  2   | * 16   + |    8   |    8    | 
   |  651   | = |  40  | * 16   + |   11   |    B    | 
   |  10417 | = |  651 | * 16   + |    1   |    1    | 

### Conversion from Decimal -> base N

 1. Convert 10# 43.5187 -> 2# 
    <br>Only provide a maximum of 16 digits in total
    ```
    number = 43                              <!-- response -->
                                             <!-- response -->
    answer: 0000 0000 0010 1011              <!-- response -->
    ```
    ```
    number =   5187                          <!-- response -->
    max    =   10 ** |5187| == 10000         <!-- response -->
                                             <!-- response -->
    answer: .1000010011001001                <!-- response -->
    ```

 1. Convert 10# - 324.324 -> 2# 
    <br>Only provide a maximum of 16 digits in total
    ```
    number = -324                            <!-- response -->
                                             <!-- response -->

    answer: 1111 1101 0111 1000              <!-- response -->
    ```
    ```
    number = 324                             <!-- response -->
    max    = 10 ** |324| == 1000             <!-- response -->
                                             <!-- response -->
    answer: .0101001011110001                <!-- response -->
    ```



### Binary32

  1. Provide the Binary Scientific Notation for: 10# 43.5187
     -  2#  1.0101110000 x2^ 101 (5)            <!-- response -->

  1. Provide the Binary Scientific Notation for: 10# - 324.324
     -  2# - 1.0101111000 x2^ 1011 (11)         <!-- response -->

  1. Provide the binary16 encoding pattern and then provide the encoding for: 10# 43.5187
     * | S | EEEEE | MMMMMMMMMM |               <!-- response -->
     * | 0 | 10100 | 0101110000 |               <!-- response -->

  1. Provide the binary32 encoding pattern and then provide the encoding for: 10# - 324.324
     * | S | EEEE EEEE | MMMM MMMM MMMM MMMM MMMM MMM | <!-- response -->
     * | 1 | 1000 1010 | 0101 1110 0001 0100 1011 110 | <!-- response -->


 

