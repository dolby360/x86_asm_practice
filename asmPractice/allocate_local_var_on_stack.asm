
.386
.model flat,c
.code

allocate proc  
	push ebp
	mov ebp, esp
	sub esp,12			; allocate 12/4 = 3 byte parameters with 32 byte len
	mov eax, 0ffffffffh
	mov [ebp - 12], eax
	mov eax, 0aaaaaaaah
	mov [ebp - 8],	eax
	mov eax, 0aaaaaaaah
	mov [ebp - 4],	eax

	mov eax, [ebp - 8]
	xor [ebp - 12], eax
	
	mov eax, [ebp - 12]
	mov esp, ebp			; important - restore the last pointer locatio on stack
	pop ebp
	ret
allocate endp
end