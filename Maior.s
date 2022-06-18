			STMFD	sp!, {R4 - R7}
			MOV		R6, #0
			MOV		R7, #20
			
			ADR		R0, Matriz
			MOV		R1, #10
			
PercorreLinhas
			BL		Soma
			MOV		R4, R0
			
			BL		Soma
			MOV		R5, R0
			
			CMP		R4, R5
			MOVLT	R4, R5
			
			ADD		R6, R6, #1
			CMP		R6, R7
			BNE		PercorreLinhas
			END
			
Soma
			MOV		r2, #0
			LDR		r2, [r0]
			SUBS		r1, r1, #1
			BEQ		FimSoma
			
Loop
			
			LDR		r3, [r0, #4]!
			ADD		r2, r2, r3
			SUBS		r1, r1, #1
			BNE		Loop
			
FimSoma
			MOV		r0, r2
			MOV		PC, LR
			
			LDMFD	sp!, {R4 - R7}
