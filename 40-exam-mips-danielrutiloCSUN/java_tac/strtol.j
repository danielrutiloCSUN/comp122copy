public static int strtol(char[] buffer, int radix){

                int value = 0;
                int i;
                char glyph;
                int digit;
                // coverting each glyph to base10 digit and adding up value
init:           ;
                i = 0;
                glyph = buffer[i];
check_glyph:    for(; glyph != '\0';){
body:           ;
                    digit = glyph2int(glyph, radix);
                    
january:            ;
                    if(digit == -1){
february:           ;
                        break;
                        // go to doneSTO
                    }
march:              ;                    
                    if(radix == 2){
april:              ;
                        value = value * radix;
                        value = value + digit;

                        // go to doneSTO
                    }
august:             ;
                    if (radix == 4) {
september:          ;
                        value = value * radix;
                        value = value + digit;
                        // go to doneSTO
                    }
here:               ;
                    if(radix == 8) {
there:              ;
                        value = value * radix;
                        value = value + digit;
                        // go to doneSTO
                        
                    }
mouse:              ;
                    if(radix == 10){
keyboard:           ;
                        value = value * radix;
                        value = value + digit; 
                        // go to doneSTO
                    }
input:              ;
                    if (radix == 16) {
output:             ;
                        value = value * radix;
                        value = value + digit; 
                        // go to doneSTO   
                    }
                    i++;
                    glyph = buffer[i];
                    
                    continue check_glyph;
                    //value = value * radix + digit;
                }
doneSTO:          ;       
                return value;
}
public static int glyph2int(char c, int radix){
    
            int value;
            int incr;
        
            value = 0;
            incr = 10;
            // Base 2, 8, 10
start:      ;
            if('0' <= c && c <= '9'){
cons:       ;
                value = c - '0'; // subtract encoding 48 from c encoding to get int 0 - 9
                // go to doneG2I
            }
may:        ;
            if('a' <= c && c <= 'f'){
dothis:     ;
                value = c - 'a';
                value = value + incr;
                // go to doneG2I
            }
june:       ;
            if('A' <= c && c <= 'F'){ // base 16
july:       ;
                value = c - 'A';
                value = value + incr;
                // go to doneG2I 
            }
dinner:     ;
            if(value >= radix){ // if the value is greater than the base
wine:       ;
                value = -1;
                // go to doneG2I
            }
doneG2I:    ;
            return value;
}
