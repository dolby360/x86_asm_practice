.386
.model flat,c

.code

cpyString proc
	push ebp
	mov ebp, esp

	mov eax, [ebp + 12]				; pointer to src
	mov ebx, [ebp + 8]				; pointer to dest
	mov esi, [ebp + 16]				; size
	xor ecx, ecx
l1:
	mov dl, byte ptr [eax + ecx]	; temp = src[i]
	mov [ebx +  ecx], dl			; dst[i] = temp
	inc ecx							; i++
	cmp ecx, esi					; 
	jne l1							; if i != size then jump to l1

	mov dl, 0
	mov byte ptr [ebx + ecx], dl


	pop ebp
	ret
cpyString endp
end
