.386
.model flat,c

.code
countCharacters proc
	push ebp
	mov ebp, esp

	xor eax,eax
	mov esi, 0
	mov ecx, [ebp + 8]		; char to count
	mov esi, [ebp + 12]		; pointer to string
	xor edi, edi
l1: 
	lodsw					; mov ax, si && add si,2 
	cmp ax, 0
	je exit
	cmp ax, cx
	jne l1
	inc edi
	jmp l1

exit:
	mov eax, edi
	pop ebp
	ret
countCharacters endp
end