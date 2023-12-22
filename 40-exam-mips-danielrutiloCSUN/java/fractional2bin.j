public static int fractional2bin(int fractional, int max_bits){

	int max = value_of_max(fractional);

	int number = fractional;
	
	int counter = 0;

	while (number != 0) {
		if(counter == max_bits){
	     	 break;
	     }
	     number = number * 2; 
	     if ( number >= max ) {
	        number = number - max;
	        
	        mips.print_di(1);
	     } else {
	        mips.print_di(0);
	     }
	     counter++;

	}

	return -1;
}

public static int value_of_max(int number) {

   int max;

   max = 10;
   for (int i=0;  number >= max ;i++) {
      if( i > 8){ 
      	break;
   	}
      max = max * 10;
   }
   return max;
}