.text 
.globl future_value

future_value: nop


		li $t0, 100				#int $t0 = 100;
		mult $a1, $a2			#int $t1 = $a1 * $a2; //(R * T)
		mflo $t1
		add $t2, $t0, $t1		#int $t2 = $t0 + $t1; //(100 + (R * T))
		mult $a0, $t2			#int $t3 = $a0 * $t2; // I * (100 + (R * T))
		mflo $t3

		div $t3, $t0		#$v0 = $t3 / $t0;
		mflo $v0			#int $v0; // $v0 = I * (100 + (R * T)) / 100;




		move $v0, $v0			# return $v0; 
   		jr $ra 