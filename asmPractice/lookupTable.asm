.386
.MODEL flat,c
.data
.const
fibVals   dword 0,1,1,2,3,5,8,13,21
		  dword 34,55,89,144,233,377,610
fibLen dword($-fibVals)/sizeof dword
public fibLen

.code
fib proc
	push ebp
	mov ebp, esp

	; check for illigal index
	mov eax, [ebp + 8] ; eax = i
	cmp eax, 0
	je invalid
	cmp eax, fibLen
	jge invalid

	; set v 
	shl eax,2			 ; eax*4 int is 4 bytes
	add eax, offset fibVals
	mov ebx, [eax]
	mov edx, [ebp + 12] ; edx = v1  -> v1 is a pointer
	mov [edx], ebx      ; *v1 = fibVals[i]

invalid:
	pop ebp
	ret
fib endp
end