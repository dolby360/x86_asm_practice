.386
.model flat,c
.code

; function to sum all elements in array
sumArray proc
	push ebp
	mov ebp, esp

	mov ecx, [ebp + 12]	;index = size
	dec ecx; ecx = size - 1
	mov ebx, [ebp + 8]	; *arr
	cmp ecx, 0
	je exit
	xor eax, eax
@@:
	mov edx, ecx
	shl edx, 2 ; edx *= 4
	add eax, [ebx + edx]
	cmp ecx, 0
	je exit
	dec ecx
	jmp @B


exit:
	pop ebp
	ret
sumArray endp
end