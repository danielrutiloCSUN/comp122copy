public static int glyph2int(char c, int radix){
    
            int value;
    
            char glyph0 = '0';
            char glyph9 = '9';
            char glypha = 'a';
            char glyphf = 'f';
            char glyphA = 'A';
            char glyphF = 'F';
            int incr = 10;

            value = 0;

            // Base 2, 8, 10
start:      ;
            if(glyph0 <= c && c <= glyph9){
cons:       ;
                value = c - glyph0; // subtract encoding 48 from c encoding to get int 0 - 9
                // goto done
            }
may:        ;
            if(glypha <= c && c <= glyphf){
dothis:     ;
                value = c - glypha + incr;
                // goto done
            }
june:       ;
            if(glyphA <= c && c <= glyphF){ // base 16
july:       ;
                value = c - glyphA + incr; 
                // goto done
            }
dinner:     ;
            if(value >= radix){ // if the value is greater than the base
wine:       ;
                value = -1;
                // goto done
            }
done:       ;
    
            return value;
}


static char [] buffer = new char[256];

public static int nextInt(int radix){

            int buffer_length;

            mips.read_s(buffer, 256);
            buffer_length = mips.retval();  

            int value = 0;
            int i;
            int glyph;
            int digit;
            int base2 = 2;
            int base4 = 4;
            int base8 = 8;
            int base10 = 10; 
            int base16 = 16;
            int shift;

    // coverting each glyph to base10 digit and adding up value
init:       ; 
            i = 0;            
loop:       for(; buffer[i] != '\0';){
body:           ;
                digit = glyph2int(buffer[i], radix);
january:        ;
                if(digit == -1){
february:           ;
                    break;
                    // goto done
                }
march:          ;
                if(radix == base2){
april:              ;
                    shift = 1;
                    value = (value << shift) + digit;
                    // goto done
                }
august:         ;
                if (radix == base4) {
september:          ;
                    shift = 2;
                    value = (value << shift) + digit;
                    // goto done
                }
here:           ;
                if(radix == base8) {
there:              ;
                    shift = 3;
                    value = (value << shift) + digit;
                    // goto done
                }
mouse:          ;
                if(radix == base10){
keyboard:           ;
                    
                    shift = 3;
                    int shift2 = 1;
                    value = (value << shift) + (value << shift2) + digit;
                    // goto done
                }
input:          ;
                if (radix == base16) {
output:             ;
                    shift = 4;
                    value = (value << shift) + digit;   
                    // goto done      
                }

                i++;
                continue loop;
            }
done:       ;

            return value;
}


// Task 1 complete: Fri Nov 10 02:46:37 PST 2023

// Task 2 complete: Fri Nov 10 16:36:11 PST 2023
