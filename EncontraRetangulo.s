EncontraRetangulo
					
					ADR		r0, Vetor
					MOV		r9, r1
					
LOOP
					CMP		r9, #0
					BEQ		Fim
					
					LDR		r2, [r10], #0
					LDR		r3, [r10], #4
					
					MOV		r0, r4
					MOV		r1, r5
					BL		BordaInferiorEsquerda
					
					MOV		r0, r6
					MOV		r0, r7
					BL		BordaSuperiorDireita
					
					SUB		r9, r9, #1
					
Fim
					MOV		r0, r4
					MOV		r1, r5
					MOV		r2, r6
					MOV		r3, r7
					
BordaInferiorEsquerda
					CMP		r0, r2
					BLE		BIEY
					SUB		r0, r2, #1
					
BIEY
					CMP		r1, r3
					BLE		FimBIE
					SUB		r1, r3, #1
					
FimBIE
					MOV		PC, LR
					
BordaSuperiorDireita
					CMP		r0, r2
					BGE		BSDY
					ADD		r0, r2, #1
					
BSDY
					CMP		r1, r3
					BGE		FimBSD
					ADD		r1, r3, #1
					
FimBSD
					MOV		PC, LR
					
