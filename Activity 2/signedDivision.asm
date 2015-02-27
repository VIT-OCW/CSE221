.model small
.stack 64
.data
.code
START: 	MOV AX, @DATA
		MOV DS, AX
		MOV AX, 00001H
		MOV BX, 0FFFFH
		IDIV BX
		INT 21H
END START