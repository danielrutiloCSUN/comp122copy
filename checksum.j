public static int checksum(){

		int max_int = 255;
	
		int sum = 0;
		int header_checksum = 0;
		int num;
		int quotient;
		int remainder; 
		int checksum;
		int result;
		int i;
		int n;
		int input_5 = 5;
init: 	;	
		i = 0;
		n = 10;
loop:	for(; i < n;){
body:		;
			mips.read_d();
    	    num = mips.retval();	
    	    sum = sum + num; 
start:		;
    	    if(i == input_5){
cons:			;
    	    	header_checksum = num;
    	    	// goto done
    	    }
done: 		;
next: 		;
    	    i++;
    	    continue loop; 
    	}
finish:	;

    	sum = sum - header_checksum;

    	int $l1 = max_int + 1;

    	quotient = sum / $l1;
    	remainder = sum % $l1;

    	int $l2 = quotient + remainder;
    	checksum = max_int - $l2;

may:	;
    	if(header_checksum == checksum){
dothis: 	;
    		result = 0;
    		// goto done;
    	}
    	else{
alt:	;
    		result = checksum;
    		// goto done; 
    	}

june: 	;
		return result; 
}


// Take 1 complete: Tue Oct 10 14:44:50 PDT 2023

// Task 2 complete: Tue Oct 10 16:41:42 PDT 2023

// Task 2 complete: Tue Oct 10 17:37:36 PDT 2023

// Task 2 complete: Thu Oct 12 22:04:19 PDT 2023

// Task 2 complete: Thu Oct 12 22:20:29 PDT 2023
