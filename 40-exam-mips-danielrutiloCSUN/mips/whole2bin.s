		.text

		.include "macros/syscalls.s"
        .include "macros/stack.s"
		.globl whole2bin
	
whole2bin: nop					#public static int whole2bin(int whole){

		#t0 : number
		#t1 : rem
		#t2 : count
		#t3 : 0
		#t4 : 2
		#t5 : binvVal
		# Save S registers
		push_s_registers()
		# Demarshal input args
								#	int number;

		move $t0, $a0   		#	number = whole;
								#	int rem;

		li $t2, 0				#	int count = 0;
		li $t3, 0
		li $t4, 2
pushloop: beq $t0, $t3, end		#	while (number != 0) {
bodyw2b: nop					#	;
		div $t0, $t4    		#		rem = number % 2;
		mfhi $t1
		mflo $t0
		push($t1)    			#	  	mips.push(rem);
								#	  	number = number / 2;
		addi $t2, $t2, 1		#	  	count++;
		b pushloop				#	  	continue pushloop;
								#	}
end: nop						#	;
								#	int binVal;
								#	//pop_all();
poploop: beq $t2, $t3, end2			#	while(count != 0){
bodyw2b2: nop					#	;	
		pop($t5)				#		binVal = mips.pop();
		print_d($t5)			#		mips.print_di(binVal);
		sub	$t2, $t2, 1			#		count--;
		b poploop				#		continue poploop;
								#	}
end2: nop						#	;
  		move $v0, $t3			#	return 0;
  		pop_s_registers()
  		jr $ra
								#}