.model small
.stack 64
.data
.code
START: 	MOV AX, @DATA
		MOV DS, AX
		MOV AL, 05H
		MOV BL, 02H
		MUL BL
		MOV AH, 4CH
		INT 21H
END START


.model small
.stack 64
.data
.code
START: 	MOV AX, @DATA
		MOV DS, AX
		MOV AX, 0005H
		MOV BX, 0001H
		MUL BX
		INT 21H
END START