		.text
		.include "macros/syscalls.s"
		.globl checksum						



checksum: nop						#	public static int checksum(){

		#t7: max_int				#		int max_int = 255;
		#t4: sum					#		int sum = 0;
		#t6: header_checksum		#		int header_checksum = 0;
		#t3: num					#		int num;
									#		int quotient;
									#		int remainder; 
									#		int checksum;
									#		int result;
		#t0: i						#		int i;
		#t1: n						#		int n;	
		#t5: input_5				#		int input_5 = 5;		
init:	nop					 		#		;			
		li $t1, 10					#		n = 10;
		li $t0, 0					#		i = 0;
		li $t4, 0
		li $t5, 5
		li $t6, 0
		li $t3, 0

loop:	bge $t0, $t1, finish		#		for(; i < n;){
body:		nop						#			;
			read_d()				#			mips.read_d();
    		move $t3, $v0			#			num = mips.retval();	
    		add $t4, $t4, $t3  		#			sum = sum + num; 
start:		nop						#			;
    	    beq $t0, $t5, cons		#				if(i == input_5){
    	    b done
cons:		nop					#				;
 	    	move $t6, $t3		#				header_checksum = num;
    	    						#				// goto done
    	    						#				}
done: 			nop					#			;
next: 		nop						#			;
    	    addi $t0, $t0, 1		#			i++;
    	b loop						#			continue loop; 
    								#		}							
finish:	nop							#		;

    	sub $t4, $t4, $t6			#		sum = sum - header_checksum;
		li $t7, 255	
		#t8: (max_int + 1)				
		add $t8, $t7, 1	    		#		int $l1 = max_int + 1;
		#t0: i -> quotient t1: n -> remainder
		div $t4, $t8	
		mflo $t0					#		quotient = sum / $l1;
		mfhi $t1					#		remainder = sum % $l1;
			
		add	$t9, $t0, $t1			#		int $l2 = quotient + remainder;
		#t8: (max_int + 1) -> checksum
    	sub	$t8, $t7, $t9			#		checksum = max_int - $l2;
							
may:	nop							#		;
    	beq  $t6, $t8, dothis		#		if(header_checksum == checksum){
    	j alt
dothis: nop							#			;
    	li $t9, 0					#			result = 0;
    	j june							#			// goto done;
    								#		}
    								#		else{
alt:	nop							#		;
    	move $t9, $t8				#			result = checksum;
    	j june							#			// goto done; 
    								#		}							
june: 	nop							#		;
		move $v0, $t9
		jr $ra						#		return result; 
									#		}

# Task 3 complete: Thu Oct 12 22:07:31 PDT 2023
