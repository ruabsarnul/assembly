.model small
.stack 100h
.data

var_1 db ?
var_2 db ?
.code 

main proc 
    mov ax, @data
    mov ds, ax
    
    
    
    mov ah, 1
    int 21h
    mov ch, al
    
    
    mov ah, 1
    int 21h
    mov cl, al
    
    
    mov ah,1
    int 21h
    mov bl, al
    
    
    mov ah, 1
    int 21h
    mov bh, al
    
    
    add ch, cl
    sub ch,48
    mov var_1, ch
    
    
    add var_1, bl
    sub var_1, 48
    mov ch, var_1
    
    add ch, bh
    sub ch, 48  
    mov var_2, ch
   
    
    mov ah, 2
    mov dl, var_2
    int 21h
    
    exit:
    mov ah, 4ch
    int 21h
     endp main 
end main