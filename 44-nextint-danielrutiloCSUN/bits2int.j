
public static int get_bit(){

	int value;

    mips.read_c();
    value = mips.retval();

    if(value == '0'){
    	return 0;
    }
    else if(value == '1'){
    	return 1;
    }
    else{
    	return -1;
    }

	
}

public static int bits2int(){

	int bit;
	bit = get_bit();

	int val = 0;

	while(bit != -1){
		
		val = val * 2 + bit; 
		bit = get_bit();

	}

	return val;

}