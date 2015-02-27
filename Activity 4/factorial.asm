.model small
.stack 64
.data
.code
START: 	MOV AX, @DATA
		MOV DS, AX
		MOV CX, 0005H
		MOV AX, 0001h
		FACT:	MUL CX
		LOOP FACT
		MOV AH, 4CH
		INT 21H
END START