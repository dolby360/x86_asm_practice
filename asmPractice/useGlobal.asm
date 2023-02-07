
.386
.model flat,c

extern gLongLong:qword

.code
glob proc
	push ebp
	mov ebp, esp

	mov eax, [ebp + 8]
	mov ebx, [ebp + 12]
	add dword ptr[gLongLong], eax
	adc dword ptr[gLongLong], eax

	pop ebp
	ret
glob endp
end
