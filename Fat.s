Fat
		STMFD	sp!, {R7, LR}
		
		CMP		R0, #1
		BHI		L1
		
		MOV		R0, #1
		MOV		PC, LR
		LDMFD	sp!, {R7, PC}
		
L1
		MOV		R7, R0
		SUB		R0, R0, #1
		BL		Fat
		
		MOV		R7, R0
		MOV		R1, R7
		BL		Multiplica
		
		LDMFD	sp!, {R7, PC}
