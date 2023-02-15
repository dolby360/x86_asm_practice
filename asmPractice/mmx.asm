;.386
.model flat, c

.data
mmx_ans byte 0,0,0,0,0,0,0,0

.code
mmx proc
	push ebp
	mov ebp, esp

	movq mm0, [ebp + 8]
	movq mm1, [ebp + 16]

	paddb mm0, mm1

	movd eax, mm0				; store low 32 bit
	;pshufw mm2, mm0, 01001110b
	psrlq mm0, 32
	movd edx, mm0				; store high 32 bit
	emms						;clear

	pop ebp
	ret
mmx endp
end