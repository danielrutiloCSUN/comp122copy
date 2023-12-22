   	.text
   		.globl volume_cube


volume_cube:	nop				# int volume_cube(int $a0) 
		# v0 :  V = s^3
   		# a0 :  s = length / width / height of the cube

   		
   		move $t0, $a0		#$t0 = $a0
   		mult $t0, $t0
   		mflo $t1			#$t1 = $t0 * $t0
   		
   		mult $t1, $t0 		
   		mflo $v0			#$v0 = $t1 * $t0
   		

		move $v0, $v0			# return $v0;
		jr $ra



