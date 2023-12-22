// FILE: encode_utf8.j
// Description:
  
public static int encode_utf8(){

    int value;
    int l;
    int b;
    int p;
  
    b = 0;
    l = 0;

    int byte1;
    int byte2;
    int byte3;

    mips.read_x();
    value = mips.retval();

    if(p <= 21){
      l = 21;
      b = 4; 

      byte1 = value & 0x3F;
      byte1 = 0x80 | byte1;






    }

    if(p <= 16){
      l = 16;
      b = 3;
 
      byte1 = value & 0x3f; 
      byte1 = 0x80 | byte1;

      byte2 = (value>>>6) & 0x3F;
      byte2 = 0x80 | byte2;

      byte3 = (value>>>12) & 0x0F;
      byte3 = 0xE0 | byte3; 

    }

    if(p <= 11){
      l = 11;
      b = 2;

    }

    if(p <= 7){
      l = 7;
      b = 1;

    }


}
  



  static int pos_msb(int number){
          // $a0 : number
          int counter;      // : counter: the return value

          counter = 0;
  init:   ;
  loop:   for(; number != 0 ;) {
  body:     ;
            counter ++;
            number = number >> 1;
            continue loop;
          }
  done:   ;
          return counter;
  }
