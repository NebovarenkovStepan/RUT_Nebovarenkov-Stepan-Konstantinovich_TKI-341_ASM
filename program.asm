section .data
	number_1 dd 3401178541 ; first number
	number_2 dd 2021332153 ; second number
	number_3 dw 38118 ; third number
	number_4 dw 32100 ; fourth number
	number_5 db 184 ; fifth number
	number_6 db 55 ; sixth number

section .text
	global _start

_start:
	mov eax, [number_1] ; number_1 into EAX CAB9DDAD
	mov ebx, [number_2] ; number_2 into EAX 787B14B9

	; for first two numbers
        ; first way
        mov ecx, eax ; save EAX to ECX
        mov eax, ebx; EAX = EBX
        mov ebx, ecx; EBX = EAX from ECX

        ; second way
        xchg eax, ebx ; exchange)))

        ;third way
        push eax ; save EAX to stack
        push ebx ; save EBX to stack
        pop eax ; EAX = EBX from stack
        pop ebx ; EBX = EAX from stack

        ;fourth way
        lea ecx, [eax] ; ECX = EAX
        lea eax, [ebx] ; EBX = EAX
        lea ebx, [ecx] ; EBX = old EAX

	mov si, [number_3] ; number_3 into ECH 94DE
	mov di, [number_4] ; number_4 into DCH 7D64

	;for second two numbers
        ; first way
        mov cx, si ; save ECH to ESI
        mov si, di; ESI = EDI
        mov di, cx; EDI = ESI from ECX

        ; second way
        xchg si, di ; exchange)))

        ;third way
        push si ; save ESI to stack
        push di ; save EDI to stack
        pop si ; ESI = EDI from stack
        pop di ; EDI = ESI from stack

        ;fourth way
        lea ecx, [esi] ; ECX = ESI
        lea esi, [edi] ; ESI = EDI
        lea edi, [ecx] ; EDI = old ESI

	mov ch, [number_5] ; number_5 into ECL ????00B8
        mov dh, [number_6] ; number_6 into EDL ????0037

	;for second two numbers
        ; first way
        mov ch, cl ; save ECH to ECL
        mov ch, dh; ECH  = EDH
        mov dh, cl; EDH = ECL from ECH

        ; second way
        xchg ch, dh ; exchange)))

        ;third way
        push cx ; save ECX to stack
        push dx ; save EDX to stack
        pop cx ; ECX = EDX from stack
        pop dx ; EDX = EDX from stack

        ;fourth way
        lea ebx, [ecx] ; EBX = ECX
        lea ecx, [edx] ; ECX = EDX
        lea edx, [ebx] ; EDX = old ECX
        
        mov ah, [number_5]
        mov al, [number_6]
        
        movsx ecx, ah
        movzx eax, al
	
	mov eax, 1
 	int 0x80
