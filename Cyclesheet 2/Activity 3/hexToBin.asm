.model small
.stack 64
.data
.code
START: 	MOV AX, @DATA
		MOV DS, AX
		MOV BL, 0AAH
		MOV CX, 08H
		PRINT:	MOV AH, 02H
				MOV DL, 'O'
				MOV AL, BL
				AND AL, 080H
				JZ ZERO
				MOV DL, '1'
		ZERO:	INT 21H
				SHL BL, 01H
		LOOP PRINT
		MOV DL, 'b'
		INT 21H
		HLT
END START