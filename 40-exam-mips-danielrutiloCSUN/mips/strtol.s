        .text

        
        .include "macros/syscalls.s"
        .include "macros/stack.s"
        .globl strtol 
        .globl glyph2int
       
        

                                        #static char [] buffer = new char[256];
                                        #
strtol:  nop                           #public static int strtol(char[] buffer, int radix){
          
        #t2 : &buffer
        #t6 : radix
        #t4 : value
        #t5 : i 
        #t6 : glyph
        #t7 : digit
        #t8 : &buffer + index // buffer[*] && base2-16
        #t9 : '\0'
        # Save S registers
        push_s_registers()
        # Demarshal input tags
        move $t2, $a0
        move $t6, $a1
        li $t4, 0

                                        #            int value = 0;
                                        #            int i;
                                        #            int glyph;
                                        #            int digit;
init:   nop                             #            ; 
        li $t5, 0                       #            i = 0;
        li $t9, '\0'
       
        add $t3, $t2, $t5 
        lbu $t8, 0($t3)  

 #beq $t8, $t9, finish
 
loop:   beq $t8, $t9, finish            #            for(; buffer[i] != '\0';){
body:       nop                         #                ; 

        #########################       #               digit = glyph2int(buffer[i], radix);

        move $a0, $t8                   # Marshal args
        move $a1, $t6   
        push_t_registers()              # Save T registers
        push $ra, $sp, $fp, $gp         # Save special registers
        jal glyph2int
        pop $ra, $sp, $fp, $gp          # Restore special registers
        pop_t_registers()               # Restore T registers
        move $t7, $v0

        #########################

            
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
        addi $t5, $t5, 1                 #                     i++;
        add $t3, $t2, $t5 
        lbu $t8, 0($t3)
        b loop                          #                     continue loop;
                                        #                 }
finish:   nop                           #                 ;
        move $v0, $t4
        # Restore S registers
        pop_s_registers()                    
        jr $ra                          #                return value;
                                        #            }

glyph2int: nop              #public static int glyph2int(char c, int radix){
    
    #t0 : c 
    #t6 : radix
    #t7 : value              #   int value;

    # Save S registers
    push_s_registers()

    # Demarshal input args
    move $t0, $a0          
    move $t6, $a1     

                    
    li $t7, 0               #    value = 0;

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
                            #   if(glypha <= c && c <= glyphf){
        bgt $t0, 'f', done
        b dothis 
dothis: nop                 #   ;
        sub $t7, $t0, 'a'   #       value = c - glypha + incr;
        addi $t7, $t7, 10
        
        b dinner                    #       // goto done
                            #   }
june:   nop                 #   ;
                            #   if(glyphA <= c && c <= glyphF){ // base 16
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
                            #       // goto done
        b done              #   }
done:   nop                 #   ;
        move $v0, $t7
        pop_s_registers()
        jr $ra                
                            #   return value;
                            #   }