public static int whole2bin(int whole){

	int number;

	number = whole;

	int count = 0;
	while (number != 0) {
	  mips.push( number % 2 );
	  number = number / 2;
	  count++;
	}

	int binVal;
	//pop_all();
	while(count != 0){

		binVal = mips.pop();
		mips.print_di(binVal);
		count--;

	}
	return 0;
}