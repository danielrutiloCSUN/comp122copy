		.text
		.include "macros/syscalls.s"
		.include "macros/stack.s"

		.globl fractional2bin


fractional2bin: nop				#public static int fractional2bin(int fractional, int max_bits){
		#t0 : fractional
		#t1 : max_bits
		#t2 : max
		#t3 : number
		#t4 : counter
		#t5 : _2
		#t6 : 0
		# Save S registers
		push_s_registers()
		# Demarshal input args
		move $t0, $a0
		move $t1, $a1

		########################
		move $a0, $t0
		push_t_registers()		# Save T registers
		push $ra, $sp, $fp 		# Save special registers

		jal value_of_max		#	int max = value_of_max(fractional);
		
		pop $ra, $sp, $fp 		# Restore special registers
		pop_t_registers()		# Restore T registers
		move $t2, $v0			# Demarshal return value
		#######################
		move $t3, $t0			#	int number = fractional;
			
		li $t4, 0				#	int counter = 0;
		li $t5, 2				#	int _2 = 2;
		li $t6, 0

emitloop: beq $t3, $t6, endf2b	#	while (number != 0) {
emitbody: nop
left: 	nop						#		;
		beq $t4, $t1, endf2b	#		if(counter == max_bits){
#right: 						#	;
								#	     	 break;
								#	     	 // go to endf2b
								#	     }
		mult $t3, $t5			#	     number = number * _2;
		mflo $t3 

sky:	nop						#			;
		bge $t3, $t2, ground    #	     if ( number >= max ) {
		b underground	
ground:	nop						#		;
		sub $t3, $t3, $t2 		#	        number = number - max;
								#	        
		print_di(1)				#	        mips.print_di(1);
		b done5					#	        // go to done5
								#	     } else {
underground: nop				#		;
		print_di(0)				#	        mips.print_di(0);
		b done5 				#	        // go to done5
								#	     }
done5:	nop						#		;
		addi $t4, $t4, 1		#	     counter++;
		b emitloop				#	     continue emitloop;
								#
								#	}
endf2b:	nop						#	;
		move $v0, $t6			#	return -1;
		pop_s_registers()		# Restore S registers
		jr $ra 					#
								#}

       .globl value_of_max
        
value_of_max: nop               #  public static int value_of_max(int       number) {
        # t0: number
        # t1: max               # int max;
        # t2: i                 # int i;
        # s0: 8                 # int _8;
        # s1: 10                # int _10;
      
        push_s_registers()      # Save S registers
        move $t0, $a0           # Demarshal input arguments
      
        li $t1, 10              # max = 10;
        li $t2, 0               # i=0;
        li $s0, 8               # _8 = 8;
        li $s1, 10              # _10 = 10;
      
loop2:  blt $t0, $t1, done2     # for (; number >= max ;) {
          bgt $t2, $s0, loop2   #    if( i > _8) break loop2;
          mul $t1, $t1, $s1     #    max = max * _10;
          addi $t2, $t2, 1      #    i++;
        b loop2                 #    continue loop2;
                                # }
done2:  nop                     # ;
                                # return max;
        move $v0, $t1           # Marshal output value
        pop_s_registers()       # Restore S registers                          
        jr $ra
                                # }