	.globl _Z5counti
_Z5counti:	
	mov	r1, #1
.LOOP1:
	cmp	r0, r1
	bgt	.ENDLOOP1
	add	r1, r1, #1
	b	.LOOP1
.ENDLOOP1:
	

	.globl _Z9countDowni
_Z9countDowni:
	mov	r3, r0
.LOOP2:
	cmp	r3, #0
	ble	.ENDLOOP2
	sub	r3, r3, #1
	b	.LOOP2
.ENDLOOP2:

	.globl _Z3sumii
_Z3sumii:
	mov	r2, r0 @lower bound, counting index
	mov	r0, #0
1: 
	add	r0, r2
	add	r2, r2, #1
	cmp	r2, r1
	ble	1b
	bx	lr
	
	.globl _Z4facti
_Z4facti:
	mov	r2, r0 @upper bound, inclusive
	mov	r1, #1 @counting index
	mov	r0, #1 @factorial
1:
	mul	r0, r0, r1
	add	r1, r1, #1
	cmp	r1, r2
	ble	1b
	bx	lr
	



	

