.model small
.stack 64
.data
.code
START: 	MOV AX, @DATA
		MOV DS, AX
		ARR dB 01h, 02H, 03H, 04H
		LEA SI, ARR
		MOV CX, 0003H
		MOV AL, [SI]
		HERE:	INC SI
				MOV BL, [SI]
				ADD AL,BL
		LOOP HERE
		INT 21H
END START