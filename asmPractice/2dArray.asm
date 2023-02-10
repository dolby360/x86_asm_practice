.386
.model flat,c
.data
col_size dword 0
row_size dword 0
.code

twoD proc
	push ebp
	mov ebp, esp

	xor eax, eax
	mov ebx, [ebp + 8]				; pointer to arr
	mov eax, [ebp + 12]				; col_size
	mov col_size, eax
	mov eax, [ebp + 16]				; row_size
	mov row_size, eax 

	mov esi, 0						; x = 0
l2:
	mov edi, esi					; i = x
	shl edi, 2						; i *= 4    // dword
	imul edi, col_size				; i *= col_size
	add esi, 1						; x++
	mov ecx, 0						; j = 0
l1:
	mov edx, 0						; offset = 0
	mov edx, ecx					; offset = j
	shl edx, 2						; offset *= 4    // dword
	add edx, ebx					; offset += arr  // address to arr
	mov dword ptr[edx + edi], 2		; arr[offset + i] = 2
	add ecx, 1						; j++
	cmp ecx, col_size				; if j == col_size
	jne l1
	cmp esi, row_size				; if i == row_size
	jne l2

	pop ebp
	ret
twoD endp
end