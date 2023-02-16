.model flat,c
.code

sseArithmeticFloat proc
	push ebp
	mov ebp, esp
	
	movss xmm0, real4 ptr[ebp + 8]
	movss xmm1, real4 ptr[ebp + 12]
	mov eax, [ebp + 16]

; addition
	movss xmm2, xmm0
	addss xmm2, xmm1
	movss real4 ptr [eax], xmm2
;Substruction
	movss xmm3, xmm0
	subss xmm3, xmm1
	movss real4 ptr [eax + 4], xmm3
;Multiplication
	movss xmm4, xmm0
	mulss xmm4, xmm1
	movss real4 ptr [eax + 8], xmm4
; Division
	movss xmm5, xmm0
	divss xmm5, xmm1
	movss real4 ptr [eax + 12], xmm5
;min
	movss xmm6, xmm0
	minss xmm6, xmm1
	movss real4 ptr [eax + 16], xmm6
;max
	movss xmm6, xmm0
	maxss xmm6, xmm1
	movss real4 ptr [eax + 20], xmm6
;sqrt
	movss xmm7, xmm0
	sqrtss xmm7, xmm1
	movss real4 ptr [eax + 28], xmm7


	pop ebp
	ret
sseArithmeticFloat endp
end