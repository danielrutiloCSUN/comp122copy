public static int surface_area_box(int $a0, int $a1, int $a2) {
   // v0 : S = 2(l * w) + 2(l * h) + 2(w * h)
   // a0 : l = length of the box
   // a1 : w = width of the box
   // a2 : h = height of the box

   int $v0 = 0;

   int $t3 = 2;
   int $t4 = $a0 * $a1;    // $t4 = (l * w)
   int $t5 = $a0 * $a2;    // $t5 = (l * h)
   int $t6 = $a1 * $a2;    // $t6 = (w * h)

   int $t0 = $t3 * $t4;    // $t0 = 2(l * w)
   int $t1 = $t3 * $t5;    // $t1 = 2(l * h)
   int $t2 = $t3 * $t6;    // $t2 = 2(w * h)  
   int $t7 = $t0 + $t1;    // $t7 = 2(l*w) + 2(l*h)

   
   $v0 = $t7 + $t2;  // v0 : S = 2(l * w) + 2(l * h) + 2(w * h)


   return $v0;       
}
