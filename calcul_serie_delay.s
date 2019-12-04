
	.data
A: 	.word 5
B: 	.double 1
C:	.double 2
D:	.double 3
res: 	.double 0


	.text

	lw r1,A(r0)	;a r1 s'inicia el contador del sumatori a 5
	l.d f2,C(r0)	;f2 conté el float 2
	l.d f3,D(r0)	;f3 conté el float 3
	l.d f4,B(r0)	;f4 conté el float 1
	l.d f5,D(r0)	;f5 conté el float 3
	
loop: 	mul.d f4,f4,f2	;f4 contindrà 2 a la n	
 	mul.d f5,f5,f3	;f5 contindrà 3 a la n + 1
	div.d f6,f4,f5	;2 elevat a la n / 3 elevat a la (n + 1)

	daddi r1,r1,-1	;es decrementa el contador
	bnez r1,loop
	add.d f1,f1,f6	;al sumatori s'afegeix la nova divisió

    	
	s.d f1,res(r0)
	halt