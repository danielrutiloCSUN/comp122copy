public static int whole2bin(int whole){

			int number;

			number = whole;
			int rem;

			int count = 0;
pushloop:	while (number != 0) {
bodyw2b:	;
				rem = number % 2;
			  	mips.push(rem);
			  	number = number / 2;
			  	count++;
			  	continue pushloop;
			}
end:		;
			int binVal;
			//pop_all();
poploop:	while(count != 0){
bodyw2b2:	;	
				binVal = mips.pop();
				mips.print_di(binVal);
				count--;
				continue poploop;
			}
end2:		;
  		return 0;
}