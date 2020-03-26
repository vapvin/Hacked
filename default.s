; References and sources - https://www.cs.virginia.edu/~evans/cs216/guides/x86.html

;Data Movement Instructions
;mov — Move (Opcodes: 88, 89, 8A, 8B, 8C, 8E, ...)
;The mov instruction copies the data item referred to by its second operand (i.e. register contents, memory contents, or a constant value) into the location referred to by its first operand (i.e. a register or memory). While register-to-register moves are possible, direct memory-to-memory moves are not. In cases where memory transfers are desired, the source memory contents must first be loaded into a register, then can be stored to the destination memory address.
;Syntax

mov <reg>,<reg>
mov <reg>,<mem>
mov <mem>,<reg>
mov <reg>,<const>
mov <mem>,<const>

;Examples

mov eax, ebx ;— copy the value in ebx into eax
mov byte ptr [var], 5 ;— store the value 5 into the byte at location var

; push — Push stack (Opcodes: FF, 89, 8A, 8B, 8C, 8E, ...)
; The push instruction places its operand onto the top of the hardware supported stack in memory. Specifically, push first decrements ESP by 4, then places its operand into the contents of the 32-bit location at address [ESP]. ESP (the stack pointer) is decremented by push since the x86 stack grows down - i.e. the stack grows from high addresses to lower addresses.
; Syntax
push <reg32>
push <mem>
push <con32>
; Examples

push eax ;— push eax on the stack
push [var] ;— push the 4 bytes at address var onto the stack

; pop — Pop stack
; The pop instruction removes the 4-byte data element from the top of the hardware-supported stack into the specified operand (i.e. register or memory location). It first moves the 4 bytes located at memory location [SP] into the specified register or memory location, and then increments SP by 4.
; Syntax
pop <reg32>
pop <mem>

; Examples

pop edi ;— pop the top element of the stack into EDI.
pop [ebx] ;— pop the top element of the stack into memory at the four bytes starting at location EBX.

