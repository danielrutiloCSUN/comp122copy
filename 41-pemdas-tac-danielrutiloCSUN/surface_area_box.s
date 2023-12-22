		.text
		.globl surface_area_box

surface_area_box: nop	
		#  v0 : 
		#  a0 : 
		#  a1 : 
		#  a2 :
		#  a3 : 

		# v0 : S = 2(l * w) + 2(l * h) + 2(w * h)

		

   		li $t3, 2		#int $t3 = 2;
   		
   		mult $a0, $a1		#int $t4 = $a0 * $a1;    // $t4 = (l * w)
   		mflo $t4
   		mult $a0, $a2		#int $t5 = $a0 * $a2;    // $t5 = (l * h)
   		mflo $t5
   		mult $a1, $a2		#int $t6 = $a1 * $a2;    // $t6 = (w * h)
   		mflo $t6

   		mult $t3, $t4		#int $t0 = $t3 * $t4;    // $t0 = 2(l * w)
   		mflo $t0
  		mult $t3, $t5		#int $t1 = $t3 * $t5;    // $t1 = 2(l * h)
  		mflo $t1
   		mult $t3, $t6		#int $t2 = $t3 * $t6;    // $t2 = 2(w * h)
   		mflo $t2  
   		add $t7, $t0, $t1		#int $t7 = $t0 + $t1;    // $t7 = 2(l*w) + 2(l*h)

   		
   		add $v0, $t7, $t2		#$v0 = $t7 + $t2;  // v0 : S = 2(l * w) + 2(l * h) + 2(w * h)



   		move $v0, $v0			# return $v0; 
   		jr $ra 

