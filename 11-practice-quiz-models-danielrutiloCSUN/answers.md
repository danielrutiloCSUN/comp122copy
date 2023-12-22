# Practice Quiz #1: Models of Communication and Computation


---
## Name:  Answer Key                                      <!-- answer -->
## GitHub Account:                                        <!-- answer -->


1. There are four theoretical machines that are built on top of combinational logic.  Enumerate each of these theoretical machines in the order of increasing computational power.  
   1. Finite State Automata  (Finite State Machine)       <!-- response -->
   1. Pushdown Automata (PDA)                             <!-- response -->
   1. Linear Bounded Automata (LBA)                       <!-- response -->
   1. Turning Machine (MA)                                <!-- response -->

1. The OSI/ISO and TCP/IP models are closely aligned, where the OSI/ISO model is more theoretical and TCP/IP is a practical implementation of a subset of the OSI/ISO model.  These two models help us to better understand how messages can be effectively sent between to computers.  Answer the following questions:

   1. At which layer is the `http` protocol associated?
      *  Layer 7:  The Application Layer                  <!-- response -->

   1. At which layer is a MAC address used to name a communication end-point?
      *  Layer 2:  The Data Link Layer                    <!-- response -->

   1. What layer is only concerned with the mechanism to send symbols (e.g., electric impulses) over some medium.
      *  Layer 1: The Physical Layer                      <!-- response -->

   1. What layer is used to support the communication that is performed by a USB hub?
      *  Layer 1: The Physical Layer                      <!-- response -->

   1. What layer is used to ensure that a message that is sent is actually received by the intended receiver.
      *  Layer 4: The Transport Layer                     <!-- response -->

1. The Process Status Diagram is used to model the life-cycle of a process.  This diagram contains the five states in which a process can be in.  Enumerate the names of each of these states:
   1. New                                                 <!-- response -->
   1. Waiting (Ready)                                     <!-- response -->
   1. Running                                             <!-- response -->
   1. Blocked                                             <!-- response -->
   1. Terminated                                          <!-- response -->

1. What type of digit circuit introduces the notion of state?  Stated another way, what type of digit circuit is necessary to store a data value that is either a 0 or a 1?
   -  Sequential Circuit                                  <!-- response -->

1. Define the following terms:
   1. interrupt
      - an asynchronous event that causes the kernel to excute                                       <!-- response -->
   1. trap
      -  a synchronous event to request the kernel to perform an operation on behalf of the running program                                             <!-- response -->
   1. lval
      - the address or location in memory of a variable   <!-- response -->
   1. rval
      - the value stored in memory for a variable         <!-- response -->
   1. kernel
      - the part of the Operationg System stored in main memory <!-- response -->

1. Provide the MIPS instruction that is equivalent to the following Java statements (which are written in TAC style).
   * $v0 = $v0 + $a0;          
     - add $v0, $v0, $a0                                  <!-- response -->
   * $v0 = $v0 + 4;
     - addi $v0, $v0, 4                                   <!-- response -->
   * $t0 = 1;
     - li $t0, 1                                          <!-- response -->
   * $t8 = $s2
     - move $t8, $t2                                      <!-- response -->

1. Explain why the MIPS microarchitecture is a physical implementation of the Harvard abstract model as opposed to the von Neumann abstract model.
  > The MIPS microarchticture separates the instructions  <!-- response -->
  > and the data into two separate memories.  This follows<!-- response -->
  > the same structure of the Harvard model.  Moreover,   <!-- response -->
  > the ALU is a central unit within the MIPS pipeline    <!-- response -->
  > with the control unit responsible for connecting the  <!-- response -->
  > various other pieces of the architecture together.    <!-- response -->
  <!-- You many use as many of lines as you want.  Make sure each line has the response tag at the end. -->


1. Given the following configuration of memory, answer the following questions:
   1. What is the value stored in memory at location `0x0101 0003`: 
      -                                                   <!-- response -->
   1. What is the label associated with location `0x0101 0001` in memory
      - 123                                               <!-- response -->
   1. What is the lval associated with `B`:  
      - 0x0101 0003                                       <!-- response -->
   1. What is the rval associated with `B`:
      - 202                                               <!-- response -->
   1. What is the rval associated with `D[1]`:
      - 253                                               <!-- response -->
   1. What is the lval associated with `D[0]`:
      - 0x0101 0009                                       <!-- response -->

| labels  | memory |  address     |
|---------|--------|--------------|
|         | 253    |  0x0101 000A |
| D:      |  42    |  0x0101 0009 |
|         |   0    |  0x0101 0008 |
|         |   1    |  0x0101 0007 |
|         |   2    |  0x0101 0006 |
| C:      |   3    |  0x0101 0005 |
|         |  77    |  0x0101 0004 |
| B:      | 202    |  0x0101 0003 |
|         |  54    |  0x0101 0002 |
| A:      | 123    |  0x0101 0001 |


