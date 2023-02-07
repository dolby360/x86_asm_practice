.386
.model flat,c

.code
getMin proc
	push ebp
	mov ebp,esp
	
	mov eax, [ebp + 8]
	mov ebx, [ebp + 12]
	cmp eax, ebx
	; cmovg eax, ebx => eax = max(eax, ebx)
	; cmovl eax, ebx => eax = min(eax, ebx)
	jle @F
	mov eax, ebx
@@:
	pop ebp
	ret
getMin endp
end