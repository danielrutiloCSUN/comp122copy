public static int fractional2bin(int fractional, int max_bits){

			int max = value_of_max(fractional);
		
			int number = fractional;
			
			int counter = 0;
			int _2 = 2;

emitloop:	while (number != 0) {
emitbody:
left:			;
				if(counter == max_bits){
right: 		;
			     	 break;
			     	 // go to endf2b
			     }
			     number = number * _2; 
sky:				;
			     if ( number >= max ) {
ground:			;
			        number = number - max;
			        
			        mips.print_di(1);
			        // go to done5
			     } else {
underground:	;
			        mips.print_di(0);
			        // go to done5
			     }
done5:			;
			     counter++;
			     continue emitloop;
		
			}
endf2b:	;
	return -1;
}

public static int value_of_max(int number) {

         int _8;
         int _10;

         int max;
         int i;

         _8  =  8;
         _10 = 10;

         max = 10;
         i   =  0;

loop2:   for (; number >= max ;) {
            if( i > _8){
				 	break loop2;
				}
            max = max * _10;
            i++;
            continue loop2;
         }
done2:   ;
         return max;
}