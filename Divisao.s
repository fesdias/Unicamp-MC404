Divisao
		MOV		R2, #0
		
Loop
		CMP		R0, R1
		BLT		FimLoop
		SUB		R0, R0, R1
		ADD		R2, R2, #1
		BAL		Loop
		
FimLoop
		MOV		R0, R2
		MOV		PC, LR