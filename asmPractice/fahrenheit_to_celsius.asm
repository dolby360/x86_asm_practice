.386
.model flat,c
.const

r8_f2c real8 0.5555555555  ; 5/9
d32_const dword 32

.code
fahrenheitToCelsius proc
	push ebp
	mov ebp,esp

	fld [r8_f2c]			; load r8_f2c
	; ST(0) = r8_f2c
	fld real8 ptr [ebp + 8]	; Load number to convert 
	; ST(0) = cel | ST(1) = r8_f2c
	fild [d32_const]				; load dword
	; ST(0) = 32 | ST(1) = cel | ST(2) = r8_f2c 
	fsubp					;  ST(0) -= ST(1)
	; ST(0) = 32 - cel | ST(1) = r8_f2c
	fmulp 
	; ST(0) = (32 - cel) * r8_f2c
	pop ebp
	ret
fahrenheitToCelsius endp
end