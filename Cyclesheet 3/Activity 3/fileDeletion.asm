.model small
.stack 64
.data
filename dB "C:\newfile.txt", 0
err dB "error$"
.code
START: 	MOV AX, @DATA
		MOV DS, AX
		MOV DX, OFFSET filename
		MOV AH, 041H
		INT 21H
		JC PRINT_ERROR
		BACK:	MOV AH, 4CH
				INT 21H
		PRINT_ERROR:	MOV DX, OFFSET err
						MOV AH, 09H
						INT 21H
						JMP BACK
END START