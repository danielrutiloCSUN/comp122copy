# Quiz #3: Digital Logic
### Estimated time: 1 hour and 45 minutes
> A practice quiz for the Digital Logic Section
> Estimated time: 1 hour and 45 minutes

---
## Name:                                            <!-- response -->
## GitHub Account:                                  <!-- response -->

1. On a scratch piece of paper, draw the circuit for a 1-to-2 decoder.  This decoder should have two inputs: A and E; with two outputs: X and Y. Provide the Boolean expression for X and Y.
   * X:
     -                                     <!-- response -->
   * Y:
     -                                     <!-- response -->

1. A mux (multiplexer) is a type of digital device.  Briefly describe the purpose or use of this type of device within a CPU.  Your answer should include some information related to your knowledge of the MIPS architecture.

   >                                <!-- response -->
   >                                <!-- response -->
   >                                <!-- response -->

   <!-- As always, add or delete lines with response tags as necessary! -->

1. Simplify the following Boolean expression.

   - A'B'C + A'B'C' + ABC

   You answer, below, needs so show each step in the simplification process and also identify the property your used on each step.

   1.                                     <!-- response -->
   1.                                     <!-- response -->
   1.                                     <!-- response -->
   1.                                     <!-- response -->
   1.                                     <!-- response -->
   1.                                     <!-- response -->
   1.                                     <!-- response -->

   <!-- As always, add or delete lines with response tags as necessary! -->

1. Given the following Boolean algebra expression, provide both the one-d and two-d truth table. (In this question, you need not worry about the response tags.)

   *  A*(B' + C)                                    

   1. the one-d truth table

      |  A |  B |  C | Output |
      |----|----|----| ------ |
      |  x |  x |  x |   x    |
      |  x |  x |  x |   x    |
      |  x |  x |  x |   x    |
      |  x |  x |  x |   x    |
      |  x |  x |  x |   x    |
      |  x |  x |  x |   x    |
      |  x |  x |  x |   x    |
      |  x |  x |  x |   x    |

   1. the two-d truth table

      |   |   | BC <br> xx | BC <br> xx | BC <br> xx | BC <br> xx | 
      |---|---|     --     |     --     |     --     |     --     | 
      | x | x |     x      |     x      |     x      |     x      | 
      | x | x |     x      |     x      |     x      |     x      | 


1. Consider the following MIPS code.

   ```mips
         li $s1, 5
         li $s2, -5
         beq  $s1, $s2, skip
           addi $t2, $t4, $t6
           lw $s2, 8($t2)
   skip: nop
         li $t2, 2
   ```

   What is the value of the PC after the `beq` instruction is executed?

   - PC:       <!-- response -->

   <!-- If you think you can NOT answer this question because you don't have a specific value for the PC, then you need to remember you can treat PC like a variable.  -->

