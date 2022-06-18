Multiplica
			MOV		R3, #0
			MOV		R2, #0
			
			MOVS		R1, R1, LSR #1
			BLO		Loop
			MOV		R2, R0
			BAL		Loop
			
Loop
			CMP		R1, #0
			BEQ		Fim
			
			ADD		R3, R3, #1
			MOVS		R1, R1, LSR #1
			BCC		Loop
			ADD		R2, R2, R0, LSL R3
			BAL		Loop
			
Fim
			MOV		R0, R2
			MOV		PC, LR
