
.386
.model flat,c

.data
arr BYTE  1,2,3,4 ; define array of bytes
mArr SBYTE -4,-3,-2,-1,0,1
myWord BYTE 2

PBYTE TYPEDEF PTR BYTE ; typedef pbyte (uint8_t *)

.code
prac proc
	push ebp
	mov ebp,esp
	push esi
	push edi

	mov al,[arr+1]
	mov [arr+1], 255 ;set second byte to 0xff
	mov al,[arr+1]

	inc myWord ; myWord++
	dec myWord ; myWord--
	mov ah, 200
	sub al, ah ; al = al - ah

; -----------------------DIRECTIVES--------------------
;-----------------------loop over array----------------
	mov edi, 0
	mov edi, OFFSET arr     ; besiclly the address of this array
	mov ecx, LENGTHOF arr  ; like len(arr) in python
	mov eax, 0
LP:
	add al, [edi]
	add edi, TYPE arr
	loop LP					; loop is using ecx as counter
;---------------loop over array and find number----------
	mov ebx, offset mArr
	mov eax, lengthof mArr
L1:
	cmp word ptr[ebx], -1
	jz found
	add ebx,2
	loop L1
	jmp not_found
found:
	movsx eax, word ptr[ebx]
not_found:
	mov ecx, 0

; -------------------TEST and CMP opperands---------------------------

	mov al, 254
	TEST al, 255 ; test if && operand of the 2 numbers is 0 then zf=1 outherwise zf=0
	JZ t1		; jump if zf=0
	jmp t2
t1:
	mov al,0
	jmp t3

t2:
	mov eax, 2
t3:
	
	CMP al, 255 ; check if the 2 numbers are the same 
	jne t4
	mov al,0
t4:	
	pop edi
	pop esi
	pop ebp
	ret
prac endp
end