public static int decode_utf8(){


	int first;
	int value;
	int prefix;
	int next, next1, next2;
	int checkValid;
	mips.read_x();
	first = mips.retval();

	value = -1;

	prefix = first & 0x80;	// 0b0xxx xxxx
	if(prefix == 0x00 ){
		// Assume one byte sequence
		return first;
	}

	// I have a multi-byte sequence

	prefix = first & 0xE0; //	0b110 x  xxxx
	if (prefix == 0xC0){
		// two byte sequence

		mips.read_x();
		next = mips.retval();

		// validate framing bits
		// insert code here



		first = first & 0x3F;	// 0x110x xxxx
		
		checkValid = next & 0xC0;

		if(checkValid == 0x80){
			next = next & 0x3F; 	// 0b0011 111
			value = (first << 6) | next;
		}	

		return value;
	}

	prefix = first & 0xF0; //	0b1110 xxxx
	if (prefix == 0xE0){
		// three byte sequence
		mips.read_x();
		next = mips.retval();

		// validate framing bits
		// insert code here

		first = first & 0x1F;	// 0x1110 xxxx

		checkValid = next & 0xC0;
		if(checkValid == 0x80){
			next = next & 0x3F; 	// 0b0011 1111
			value = (first << 6) | next;
		}	

		mips.read_x();
		next1 = mips.retval();

		checkValid = next1 & 0xC0;
		if(checkValid == 0x80){
			next1 = next1 & 0x3F; // 0b0011 1111
			value = (value << 6) | next1; 
		}

		return value;
	}

prefix = first & 0xF8; //	0b1111 0xxx
	if (prefix == 0xF0){
		// four byte sequence

		mips.read_x();
		next = mips.retval();

		// validate framing bits
		// insert code here

		first = first & 0x0F;	// 0x1110 xxxx

		checkValid = next & 0xC0;

		if(checkValid == 0x80){
			next = next & 0x3F; 	// 0b0011 1111
			value = (first << 6) | next;
		}

		mips.read_x();
		next1 = mips.retval();

		checkValid = next1 & 0xC0;

		if(checkValid == 0x80){
			next1 = next1 & 0x3F; // 0b0011 1111
			value = (value << 6) | next1;
		}
		mips.read_x();
		next2 = mips.retval();

		checkValid = next2 & 0xC0;

		if(checkValid == 0x80){
			next2 = next2 & 0x3F; // 0b0011 1111
			value = (value << 6) | next2;
		}


		return value;
	}



	return value;
}