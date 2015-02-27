.model small
.stack 64
.data
X dW 02H
Y dW 04H
.code
START: 	MOV AX, @DATA
		MOV DS, AX
		MOV CX, 0004H
		MOV AX, 0001H
		PUSH AX
		L1:	LEA SI. X
			MOV BX, [SI]
			POP AX
			ADD AX, BX
			PUSH AX
			MOV AX, BX
			LEA SI, Y
			MOV BX, [SI]
			MUL BX
			LEA DI, X
			MOV [DI], AX
		LOOP L1
		POP AX
		MOV AH, 4CH
		INT 21H
		HLT
END START