.model small
.stack 64
.data
.code
START: 	MOV AX, @DATA
		MOV DS, AX
		MOV AL, 01H
		MOV BL, 01H
		MOV CX, 0005H ;  2 less than N
		LOOP1:	PUSH AX
				ADD AL, BL
				POP BX
		LOOP LOOP1
		MOV AH, 4CH
		INT 21H
		HLT
END START