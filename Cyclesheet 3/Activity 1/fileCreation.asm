.model small
.stack 64
.data
filename dB "C:\oldfile.txt", 0
err dB "error$"
.code
START: 	MOV AX, @DATA
		MOV DS, AX
		MOV DX, OFFSET filename
		MOV CX, 00H
		MOV AH, 03CH
		INT 21H
		JC PRINT_ERROR
		BACK:	MOV AH, 4CH
				INT 21H
		PRINT_ERROR:	MOV AH, 09H
						MOV DX, OFFSET err
						INT 21H
						JMP BACK
END START