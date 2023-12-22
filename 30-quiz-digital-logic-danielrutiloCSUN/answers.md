# Quiz #3: Digital Logic 
> Released: Dec 5 23:59:59
> Quiz Date: Dec 6/7 
> Time limit: 2 hours
> Due: Dec 7 23:59:59
> This an open notes quiz

---

### Name: Answer Key
### GitHub Account: NA

### Five Elements of an ISA
* What are the five (5) elements that are defined by an ISA?<br>
   1. Set of instructions and their semantics     <!-- response -->
   2. Supported data types                        <!-- response -->
   3. Register: number, width, and purpose        <!-- response -->
   4. Memory: orientation, layout, endianness     <!-- response -->
   5. Operating System Interface                  <!-- response -->



### Pipeline Architecture Stages
* The MIPS MicroArchitecture is an example of a pipeline architecture that executes each instruction via a series of stages.  Enumerate and describe briefly what each of these stages do:
   1. Fetch: reads the next instruction from the text segment of memory.       <!-- response -->
   1. Decode: based upon the value of the IR, determines the the instruction to execute. <!-- response -->
   1. Execute: performs the ALU portion of the instructions.                   <!-- response -->
   1. Mem: access the data memory to perform a read or write operation.        <!-- response -->
   1. WB (write-back): places the result of the instruction into a register.   <!-- response -->
   <!-- Feel free to add or remove additional response lines as needed. -->
 


### Signed Extension
* The MIPS I-format includes a 16-bit field, which is used to encode an immediate value.  During the "Instruction Decode" cycle this 16-bit value is transformed into a 32-bit value.  For each of the following values, provide 16-bit value that is stored in the instruction and the 32-bit value that is passed to the ALU.
   1. 0x4E0F:  
      * 16-bit value: 2#                     0100 1110 0000 1111      <!-- response -->
      * 32-bit value: 2# 0000 0000 0000 0000 0100 1110 0000 1111      <!-- response -->
   1. 0xA0AA:  
      * 16-bit value: 2#                     1010 0000 1010 1010      <!-- response -->
      * 32-bit value: 2# 1111 1111 1111 1111 1010 0000 1010 1010      <!-- response -->
   1. -8:                
      * 16-bit value: 2#                     1111 1111 1111 1000      <!-- response -->
      * 32-bit value: 2# 1111 1111 1111 1111 1111 1111 1111 1000      <!-- response -->
   1. 5:                   
      * 16-bit value: 2#                     0000 0000 0000 0101      <!-- response -->
      * 32-bit value: 2# 0000 0000 0000 0000 0000 0000 0000 0101      <!-- response -->


### Combinational versus Sequential Circuit
* Explain the primary difference between a combinational and a sequential circuit.
   ```response  (Place your response with this code block.)
   A sequential circuit is composed of a combinational circut and memory components
   The memory component requires a clock to trigger state changes.
   Hence a sequential circuit differs from a cobminatial circuit in that it has a 
   clock and memory components
   ```


### Boolean Expressions
* Given the following truth table, provide the equivalent Boolean expression:
   *  A'B'C' + AB'C + ABC'                                           <!-- response -->

   | A  | B  | C  | Output|
   |----|----|----|-------|
   | 0  | 0  | 0  |   1   |
   | 0  | 0  | 1  |   0   |
   | 0  | 1  | 0  |   0   |
   | 0  | 1  | 1  |   0   |
   | 1  | 0  | 0  |   0   |
   | 1  | 0  | 1  |   1   |
   | 1  | 1  | 0  |   1   |
   | 1  | 1  | 1  |   0   |

### Karnaugh map
* Convert the following truth table into a Karnaugh map.<br>
   (Make sure you update all of the x-s in the answer template.)
   
   | A  | B  | C  | Output |
   |----|----|----|--------|
   | 0  | 0  | 0  |   0    |
   | 0  | 0  | 1  |   0    |
   | 0  | 1  | 0  |   1    |
   | 0  | 1  | 1  |   0    |
   | 1  | 0  | 0  |   1    |
   | 1  | 0  | 1  |   1    |
   | 1  | 1  | 0  |   1    |
   | 1  | 1  | 1  |   1    |

   <!-- Updated the table below to provide your answer -->
   |   |   | BC <br> 00 | BC <br> 01 | BC <br> 11 | BC <br> 10 | 
   |---|---| -----------| ---------- | ---------- | ---------- | 
   | A | 0 |     0      |     0      |     0      |     1      | 
   | A | 1 |     1      |     1      |     1      |     1      | 


### Algebraic Simplification
* Proved the steps to show that `C'(B'C + 1) + A(BC' + ABC')` is equivalent to `C'`.
   ```response  C'(B'C + 1) + A(BC' + ABC') == C'
   C'(B'C + 1) + A(BC' + ABC')     : given        
   C'(1)  + A(BC' + ABC')          : annulment
   C' + A(BC' + ABC')              : identity
   C' + ABC' + AABC'               : distributive
   C' + ABC'(1 + A)                : distributive
   C' + ABC'(1)                    : annulment
   C' + ABC'                       : identity
   C'(1 + AB)                      : distributed
   C'(1)                           : annulment
   C'                              : identity
   ```


### Models of Computation
There are a number of different types of machines, each with a different level of computational power. The Turning machine is equivalent to a Recursively Enumerable Language.  Complete the following statements:

* The most power machine is the Turing Machine.                             <!-- response -->
* Any and every function can be evaluated using Boolean Algebra.            <!-- response -->
* We can model a process via the PSD, which is an example of a Finite State Automata.   <!-- response -->



---
Remember to run `make` to review your submission.


