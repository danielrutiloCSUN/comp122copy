#  This is an example quiz!

---
# Quiz #1: Models of Communication and Computation
### Date: Sep 29, 2023
### Estimated time: 1 hour
### Exam Time-frame
* Start: Friday: 17:00 (5:00pm)
* End: Saturday: 17:00 (5:00pm)

---
## Name: Daniel Rutilo                                              <!-- answer -->
## GitHub Account: danielrutiloCSUN                                 <!-- answer -->


1. We can use a Finite State Machine (FSM) to model the interaction between the OS and your program.

On a piece of paper, 
   - draw the Process Status Diagram (PSD) on a piece of paper
   - label both it states and edges
   - take a picture your drawing
   - upload your picture to your computer
   - export your picture in PNG format with the name "PSD.png"
   - copy your "PSD.png" to this directory.<br>

  ![Process Status Diagram](PSD.png)


1. An ISA is an abstraction for a physical computer.  This abstraction includes a defined set of characteristics.  Enumerate these defined characteristics.
   1.  Supports instructions and their semantics                         <!-- response -->
   1.  Defines registers size, number, and purpose                           <!-- response -->
   1.  Defines Data types                       <!-- response -->
   1.  Memory is an array of bytes              <!-- response -->
   1.  Memory has layout, addressing, alignment, and endiance         <!-- response -->  

<!-- You may add additional lines as needed; remember to add respons tags.  -->

1. Briefly describe the difference between a Sequential circuit and a Combinational Circuit.

   ```response
      Sequential circuits utilizes latch and flip-flop. It has only two stable states. Sequential circuits outputs data based off current and previous states of the flip-flop. Combinational Circuit utilizes boolean algebra to collect current input and generate output based off these inputs. It can only take 1 (true) or 0 (false as input).

   ```

   <!-- You may add additional lines within the code block above, without the need to added additional response tag. -->


1. Define the following terms:
   1. trap
      - A trap is an instruction set by the user that must occur so that the program may continue to execute.                                                   <!-- response -->
   1. kernel
      - The main core of the operating system located in the main memory.                                 <!-- response -->
   1. rval
      - The value located at the address of the lval.                                                   <!-- response -->
   1. interrupt
      - An interrupt is an instruction that the operating system executes in order for the program to continue.                                                     <!-- response -->


1. A 'Universal Computer' is an abstract machine based upon the Turing Machine.  This computer has a standardized control program to manage the underlying finite state machine. (This control program is akin to the computer firmware).  Two other programs are placed on the tape.  What are these two other programs:
  1. It has a memory program                                                     <!-- response -->
  1. It has an Input/output program                                                     <!-- response -->


1. A Pushdown Automata (PDA) has more computational power than a Finite State Machine (FSM). What is the difference between the PDA and and FSM that provides the PDA with this additional power?
   1. Pushdown Automata has 7 tuples while Finite State only has 5.                                                    <!-- response -->
   1. Pushdown Automata has a stack while Finite state doesn't.                                                     <!-- response -->



1. Memory can be modeled as an array of bytes.  A register on the MIPS architecture contains 32 bits.  What role does endiance play when we execute an instruction to load a register with values stored within memory.
   ```response
      Endiance role is organize the order of bytes within a word. MIPS uses little endian format so it does 4,3,2,1 or falls to the left.         
              
   ```

1. Given the following configuration of memory, answer the following questions:
   1. What is the value stored in memory at location `0x0100 0002`: 
      - 54                                                  <!-- response -->
   1. What is the label associated with location `0x0100 0009` in memory
      - D                                                  <!-- response -->
   1. What is the lval associated with `B`:  
      - 0x0100 0003                                        <!-- response -->
   1. What is the rval associated with `B`:
      - 202                                                <!-- response -->
   1. What is the rval associated with `C[3]`:
      - 0                                                  <!-- response -->
   1. What is the lval associated with `C[3]`:
      - 0x0100 0008                                      <!-- response -->

|     | mem |              |
|-----|-----|--------------|
|     | 253 |  0x0100 000A |
| D:  |  42 |  0x0100 0009 |
|     |   0 |  0x0100 0008 |
|     |   1 |  0x0100 0007 |
|     |   2 |  0x0100 0006 |
| C:  |   3 |  0x0100 0005 |
|     |  77 |  0x0100 0004 |
| B:  | 202 |  0x0100 0003 |
|     |  54 |  0x0100 0002 |
| A:  | 123 |  0x0100 0001 |



