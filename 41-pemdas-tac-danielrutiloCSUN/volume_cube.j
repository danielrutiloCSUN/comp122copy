public static int volume_cube(int $a0) {
   // v0 :  V = s^3
   // a0 :  s = length / width / height of the cube

   int $v0 = 0;
   int $t0;
   int $t1; 

   $t0 = $a0;        
   $t1 = $t0 * $t0;
   $v0 = $t1 * $t0; 

   return $v0;
}
