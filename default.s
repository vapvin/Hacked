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

