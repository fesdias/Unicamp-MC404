main
		;		Se R0 for 0
		mov		R3, #0
		sub		R4, R0, #0
		beq		fim
		
		;		Se R0 for 1
		mov		R3, #1
		sub		R4, R0, #1
		beq		fim
		
		;		Prepara para os outros casos
		mov		R2, #0
		mov		R3, #1
		mov		R4, #0
		sub		R0, R0, #2
		bal		fib
		
fib
		add		R4, R2, R3
		mov		R2, R3
		mov		R3, R4
		
		sub		R0, R0, #1
		beq		fim
		
fim
		mov		R1, R3
