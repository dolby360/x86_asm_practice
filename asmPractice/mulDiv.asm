
.386
.model flat,c
.data
.code

_mul proc
	push ebp ; save old function pointer in stack
	mov ebp, esp  ; save current function pointer in ebp

	mov eax, [ebp + 8] ; first value
	imul eax, [ebp + 12]

	pop ebp ; save last value in stack to ebp 
	ret
_mul endp


_div proc
	push ebp
	mov ebp, esp

	mov eax, 0
	mov edx, 0ffffffffh		; cdq will zero edx value
	mov ebx, 0
	mov eax, [ebp + 8]
	mov ebx, [ebp + 12]
	cdq						; extend the divident to 64 bit 
							; now dividatent is edx and eax
	idiv ebx				; divisior is ebx and division stored in eax. 
							; remainder is placed in EDX.

	pop ebp
	ret
_div endp


end