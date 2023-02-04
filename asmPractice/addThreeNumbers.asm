
.386
.model flat,c
.data

.code
addThree proc
	push ebp
	mov ebp, esp
	; first 32 bits of the stack is base address
	; second 32 bits is return address.
	; esp + 8 == esp + offsetof(32+32) where the first parameter is.
	mov ecx, 3
	mov ebx, esp ; get base stack pointer
	add ebx, 8 ; skip first 2 pointers
	mov eax, 0
lp:
	add eax, [ebx]
	add ebx, 4
	loop lp

	pop ebp
	ret ;eax is used as the return value.
addThree endp
end