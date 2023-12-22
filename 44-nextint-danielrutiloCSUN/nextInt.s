        .data
buffer:    .space 256           

        .text

        .include "macros/subroutine.s"
        .include "macros/syscalls.s"
        .include "macros/stack.s"
        .globl nextInt 
        .globl glyph2int
       
        

                                        #static char [] buffer = new char[256];
                                        #
nextInt:  nop                           #public static int nextInt(int radix){
                                        #
        move $t6, $a0                  #            int buffer_length;
                            
        li $t1, 256
        la $t2, buffer                  #
        read_s($t2, $t1)                #            mips.read_s(buffer, 256);
        move $t3, $v0                   #            buffer_length = mips.retval();  
                                        #
        li $t4, 0                      #            int value = 0;
        #t5: i                          #            int i;
        #t6: glyph                      #            int glyph;
        #t7: digit                      #            int digit;
        #t8: base2-16                   #            int base2 = 2;
                                        #            int base4 = 4;
                                        #            int base8 = 8;
                                        #            int base10 = 10; 
                                        #            int base16 = 16;
        #t9: shift                      #            int shift;
                                        #
                                        #    // coverting each glyph to base10 digit and adding up value
init:   nop                             #            ; 
        li $t5, 0                       #            i = 0;
        li $t9, '\0'
       
        add $t2, $t2, $t5 
        lb $t8, 0($t2)  

 #beq $t8, $t9, finish
 
loop:   beq $t8, $t9, finish            #            for(; buffer[i] != '\0';){
body:       nop                         #                ;    
            call glyph2int $t8, $t6
            move $t7, $v0               #                digit = glyph2int(buffer[i], radix);
            
january:    nop                         #                ;
            beq $t7, -1, february       #                if(digit == -1){
            b march
february:   nop                         #                    ;
            b finish                      #                    break;
                                        #                    // goto done
                                        #                }
march:      nop                         #                ;
            li $t8, 2
            beq $t6, $t8, april         #                if(radix == base2){
            b august    
april:      nop                         #                    ;
            #li $t9, 1                   #                    shift = 1;
            mul $t4, $t4, $t6           #                    value = (value << shift) + digit;
            add $t4, $t4, $t7
            b next                      #                    // goto done
                                        #                }
august:     nop                         #                ;
            li $t8, 4
            beq $t6, $t8, september     #                if (radix == base4) {
            b here    
september:  nop                         #                    ;
            #li $t9, 2                   #                    shift = 2;
            mul $t4, $t4, $t6           #                    value = (value << shift) + digit;
            add $t4, $t4, $t7           #                    // goto done
            b next                      #                }

here:       nop                         #                ;
            li $t8, 8
            beq $t6, $t8, there         #                if(radix == base8) {
            b mouse
there:      nop                         #                    ;
            #li $t9, 3                   #                    shift = 3;
            mul $t4, $t4, $t6           #                    value = (value << shift) + digit;
            add $t4, $t4, $t7           #                    // goto done
            b next                      #                }

mouse:      nop                         #                ;
            li $t8, 10
            beq $t6, $t8, keyboard      #                if(radix == base10){
            b input
keyboard:   nop                         #                    ;
                                        #                    
            #sll $t9, 3                 #                   shift = 3;
                                        #                    int shift2 = 1;
            mul $t4, $t4, $t6           #                    value = (value << shift) + (value << shift2) + digit;
            add $t4, $t4, $t7           #                    // goto done
            b next                      #                }

input:      nop                         #                ;
            li $t8, 16
            beq $t6, $t8, output        #                if (radix == base16) {

output:     nop                         #                    ;
                                        #                    shift = 4;
            mul $t4, $t4, $t6           #                    value = (value << shift) + digit;   
            add $t4, $t4, $t7           #                    // goto done      
            b next                      #                }
                                        #
next:   nop
        #add $t5, $t5, 1                 #                     i++;
        addi $t2, $t2, 1 
        lb $t8, 0($t2)
        b loop                          #                     continue loop;
                                        #                 }
finish:   nop                             #                 ;
        move $v0, $t4                    
        jr $ra                                #                return value;
                                        #            }

glyph2int: nop              #public static int glyph2int(char c, int radix){
    
    #t2: value              #   int value;

    move $t0, $a0          
    move $t6, $a1     

    #li $t3, '0'             #   char glyph0 = '0';
    #li $t4, '9'             #   char glyph9 = '9';
    #li $t5, 'a'             #   char glypha = 'a';
    #li $t6, 'f'             #   char glyphf = 'f';
    #li $t7, 'A'             #   char glyphA = 'A';
    #li $t8, 'F'             #   char glyphF = 'F';
    #li $t9, 10              #   int incr = 10;
                    
    li $t7, -1               #    value = 0;

                            #   // Base 2, 8, 10
start:  nop                 #   ;
        blt $t0, '0', done    #   if(glyph0 <= c && c <= glyph9){
        bgt $t0, '9', june
        b cons
cons:   nop                 #   ;
        sub $t7, $t0, '0'   #       value = c - glyph0; // subtract encoding 48 from c encoding to get int 0 - 9
                            #       // goto done
       
        b dinner 
                            #   }
may:    nop                 #   ;
        #bgt $t5, $t0, june  #   if(glypha <= c && c <= glyphf){
        bgt $t0, 'f', done
        b dothis 
dothis: nop                 #   ;
        sub $t7, $t0, 'a'   #       value = c - glypha + incr;
        addi $t7, $t7, 10
        
        b dinner                    #       // goto done
                            #   }
june:   nop                 #   ;
        #bgt $t7, $t0, dinner#   if(glyphA <= c && c <= glyphF){ // base 16
        bgt $t0, 'F', may
        b july
july:   nop                 #   ;
        sub $t7, $t0, 'A'   #       value = c - glyphA + incr; 
        add $t7, $t7, 10
        
        b dinner                    #       // goto done
                            #   }
dinner: nop                 #   ;
        bge $t7, $t6, wine  #   if(value >= radix){ // if the value is greater than the base
        b done
wine:   nop                 #   ;
        li $t7, -1          #       value = -1;
        #move $v0, $t2       #       // goto done
        b done              #   }
done:   nop                 #   ;
        move $v0, $t7
        jr $ra                
                            #   return value;
                            #   }


#                                        #static char [] buffer = new char[256];
#                                        #
#nextInt:  nop                           #public static int nextInt(int radix){
#                                        #
#        move $t0, $a0                  #            int buffer_length;
#                            
#        li $t1, 256
#        la $t2, buffer                  #
#        read_s($t2, $t1)                #            mips.read_s(buffer, 256);
#        move $t3, $v0                   #            buffer_length = mips.retval();  
#                                        #
#        li $t4, -1                       #            int value = 0;
#        #t5: i                          #            int i;
#        #t6: glyph                      #            int glyph;
#        #t7: digit                      #            int digit;
#        #t8: base2-16                   #            int base2 = 2;
#                                        #            int base4 = 4;
#                                        #            int base8 = 8;
#                                        #            int base10 = 10; 
#                                        #            int base16 = 16;
#        #t9: shift                      #            int shift;
#                                        #
#                                        #    // coverting each glyph to base10 digit and adding up value
#init:   nop                             #            ; 
#        li $t5, 0                       #            i = 0;
#        li $t9, '\0'
#        #la $t2, buffer
#        add $t2, $t2, $t5 
#        lb $t8, 0($t2)  
#
# 
#loop:   beq $t8, $t9, finish            #            for(; buffer[i] != '\0';){
#body:       nop                         #                ;    
#            call glyph2int $t8, $a0
#            move $t7, $v0               #                digit = glyph2int(buffer[i], radix);
#            #move $t4, $t7
#january:    nop                         #                ;
#            beq $t7, -1, february       #                if(digit == -1){
#            
#february:   nop                         #                    ;
#            b finish                      #                    break;
#                                        #                    // goto done
#                                        #                }
#march:      nop                         #                ;
#            li $t8, 2
#            beq $a1, $t8, april         #                if(radix == base2){
#april:      nop                         #                    ;
#            #li $t9, 1                   #                    shift = 1;
#            mul $t4, $t4, $t0           #                    value = (value << shift) + digit;
#            add $t4, $t4, $t7
#            b next                      #                    // goto done
#                                        #                }
#august:     nop                         #                ;
#            li $t8, 4
#            beq $a1, $t8, september     #                if (radix == base4) {
#september:  nop                         #                    ;
#            #li $t9, 2                   #                    shift = 2;
#            mul $t4, $t4, $t0           #                    value = (value << shift) + digit;
#            add $t4, $t4, $t7           #                    // goto done
#            b next                      #                }
#
#here:       nop                         #                ;
#            li $t8, 8
#            beq $a1, $t8, there         #                if(radix == base8) {
#there:      nop                         #                    ;
#            #li $t9, 3                   #                    shift = 3;
#            mul $t4, $t4, $t0           #                    value = (value << shift) + digit;
#            add $t4, $t4, $t7           #                    // goto done
#            b next                      #                }
#
#mouse:      nop                         #                ;
#            li $t8, 10
#            beq $t0, $t8, keyboard      #                if(radix == base10){
#keyboard:   nop                         #                    ;
#                                        #                    
#            #sll $t9, 3                 #                   shift = 3;
#                                        #                    int shift2 = 1;
#            mul $t4, $t4, $t0           #                    value = (value << shift) + (value << shift2) + digit;
#            add $t4, $t4, $t7           #                    // goto done
#            b next                      #                }
#
#input:      nop                         #                ;
#            li $t8, 16
#            beq $t0, $t8, output        #                if (radix == base16) {
#output:     nop                         #                    ;
#                                        #                    shift = 4;
#            mul $t4, $t4, $t0           #                    value = (value << shift) + digit;   
#            add $t4, $t4, $t7           #                    // goto done      
#            b next                      #                }
#                                        #
#next:   nop
#        add $t5, $t5, 1                 #                     i++;
#        add $t2, $t2, $t5 
#        lb $t8, 0($t2)
#        b loop                          #                     continue loop;
#                                        #                 }
#finish:   nop                             #                 ;
#        move $v0, $t4                    
#        jr $ra                                #                return value;
#                                        #            }
