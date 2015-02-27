.model small
.stack 64
.data
.code
START: 	MOV AX, @DATA
		MOV DS, AX
		MOV AX, 0FFFFH
		MOV BX, 0FFFFH
		IMUL BX
		INT 21H
END START