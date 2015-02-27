.model small
.stack 64
.data
ARR dB 01H, 04H, 02H, 05H, 03H
.code
START: 	MOV AX, @DATA
		MOV DS, AX
		mov cx, 0004H
		LEA SI, ARR
		L1:	PUSH CX
			PUSH SI
			MOV DX, SI
			INC DX
			MOV DI, DX
		L2:	MOV AL, [SI]
			MOV BL, [DI]
			CMP AL, BL
			JGE SWAP
		BACK:	INC DI
		LOOP L2
		POP SI
		POP CX
		INC SI
		LOOP L1
		MOV AH, 4CH
		INT 21H
		HLT

		SWAP: 	MOV[SI], BL
				MOV [DI], AL
				JMP BACK
END START
.	END