# Practice Quiz #1: Models of Communication and Computation


---
## Name:                                                  <!-- answer -->
## GitHub Account:                                        <!-- answer -->


1. There are four theoretical machines that are built on top of combinational logic.  Enumerate each of these theoretical machines in the order of increasing computational power.  
   1.                                                     <!-- response -->
   1.                                                     <!-- response -->
   1.                                                     <!-- response -->
   1.                                                     <!-- response -->
   1.                                                     <!-- response -->

1. The OSI/ISO and TCP/IP models are closely aligned, where the OSI/ISO model is more theoretical and TCP/IP is a practical implementation of a subset of the OSI/ISO model.  These two models help us to better understand how messages can be effectively sent between to computers.  Answer the following questions:

   1. At which layer is the `http` protocol associated?
      *                                                   <!-- response -->

   1. At which layer is a MAC address used to name a communication end-point?
      *                                                   <!-- response -->

   1. What layer is only concerned with the mechanism to send symbols (e.g., electric impulses) over some medium.
      *                                                   <!-- response -->

   1. What layer is used to support the communication that performed by a USB hub?
      *                                                   <!-- response -->

   1. What layer is used to ensure that a message that is sent is actually received by the intended receiver.
      *                                                   <!-- response -->

1. The Process Status Diagram is used to model the life-cycle of a process.  This diagram contains the five states in which a process can be in.  Enumerate the names of each of these states:
   1.                                                     <!-- response -->
   1.                                                     <!-- response -->
   1.                                                     <!-- response -->
   1.                                                     <!-- response -->
   1.                                                     <!-- response -->

1. What type of digit circuit introduces the notion of state?  Stated another way, what type of digit circuit is necessary to store a data value that is either a 0 or a 1?
   -                                                      <!-- response -->

1. Define the following terms:
   1. interrupt
      -                                                   <!-- response -->
   1. trap
      -                                                   <!-- response -->
   1. lval
      -                                                   <!-- response -->
   1. rval
      -                                                   <!-- response -->
   1. kernel
      -                                                   <!-- response -->

1. Provide the MIPS instruction that is equivalent to the following Java statements (which are written in TAC style).
   * $v0 = $v0 + $a0;          
     -                                                    <!-- response -->
   * $v0 = $v0 + 4;
     -                                                    <!-- response -->
   * $t0 = 1;
     -                                                    <!-- response -->
   * $t8 = $s2
     -                                                    <!-- response -->

1. Explain why the MIPS microarchitecture is a physical implementation of the Harvard abstract model as opposed to the von Neumann abstract model.
  >                                                       <!-- response -->
  >                                                       <!-- response -->
  >                                                       <!-- response -->
  <!-- You many use as many of lines as you want.  Make sure each line has the response tag at the end. -->


1. Given the following configuration of memory, answer the following questions:
   1. What is the value stored in memory at location `0x0101 0003`: 
      -                                                   <!-- response -->
   1. What is the label associated with location `0x0101 0001` in memory
      -                                                   <!-- response -->
   1. What is the lval associated with `B`:  
      -                                                   <!-- response -->
   1. What is the rval associated with `B`:
      -                                                   <!-- response -->
   1. What is the rval associated with `D[1]`:
      -                                                   <!-- response -->
   1. What is the lval associated with `D[0]`:
      -                                                   <!-- response -->

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


