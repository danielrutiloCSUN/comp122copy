public static int strtol(char[] buffer, int radix){

    int value = 0;
    int i;
    int glyph;
    int digit;
    // coverting each glyph to base10 digit and adding up value
    for(i = 0; buffer[i] != '\0'; i++){
        digit = glyph2int(buffer[i], radix);
        if(digit == -1){
            break;
        }
        if(radix == 2){
            value = (value << 1) + digit;
        }
        if (radix == 4) {
            value = (value << 2) + digit;
        }
        if(radix == 8) {
        
            value = (value << 3) + digit;
            
        }
        if(radix == 10){
            value = ((value << 3) + (value << 1)) + digit;
        }
        if (radix == 16) {
            value = (value << 4) + digit;         
        }
        //value = value * radix + digit;
    }
    return value;
}
public static int glyph2int(char c, int radix){
    
    int value;
    value = 0;
    // Base 2, 8, 10
    if('0' <= c && c <= '9'){
        value = c - '0'; // subtract encoding 48 from c encoding to get int 0 - 9
    }
    else if('a' <= c && c <= 'f'){
        value = c - 'a' + 10;
    }
    else if('A' <= c && c <= 'F'){ // base 16
        value = c - 'A' + 10; 
    }
    if(value >= radix){ // if the value is greater than the base
        value = -1;
    }
    
    return value;
}
