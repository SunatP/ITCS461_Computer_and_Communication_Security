	.file	"lab5.c"
	.intel_syntax noprefix
	.text
	.globl	_temp
	.def	_temp;	.scl	2;	.type	32;	.endef
_temp:
	push	ebp
	mov	ebp, esp
	nop
	pop	ebp
	ret
	.section .rdata,"dr"
	.align 4
LC0:
	.ascii "************************************************************\0"
	.align 4
LC1:
	.ascii "  Congratulation!! You have access to the secret function.\0"
	.text
	.globl	_secret_function
	.def	_secret_function;	.scl	2;	.type	32;	.endef
_secret_function:
	push	ebp
	mov	ebp, esp
	sub	esp, 24
	mov	DWORD PTR [esp], OFFSET FLAT:LC0
	call	_puts
	mov	DWORD PTR [esp], OFFSET FLAT:LC1
	call	_puts
	mov	DWORD PTR [esp], OFFSET FLAT:LC0
	call	_puts
	nop
	leave
	ret
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 4
LC2:
	.ascii "------------------------BEFORE------------------------------\0"
	.align 4
LC3:
	.ascii "   a: address=%p \11 value=%10d (hex=%08x)\12\0"
	.align 4
LC4:
	.ascii "   b: address=%p \11 value=%10d (hex=%08x)\12\0"
LC5:
	.ascii "name: address=%p\12\0"
LC6:
	.ascii "secret_function: address=%p\12\0"
	.align 4
LC7:
	.ascii "------------------------------------------------------------\0"
	.align 4
LC8:
	.ascii "ITCS461: Computer and Communication Security Lab 5\0"
LC9:
	.ascii "Enter your name: \0"
LC10:
	.ascii "%s\0"
LC11:
	.ascii "Hello ... %s\12\0"
LC12:
	.ascii "Your name's length = %d\12\0"
	.align 4
LC13:
	.ascii "\12Congratulations! You are logged in.\12\0"
	.align 4
LC14:
	.ascii "\12Sorry, You are not allowed here.\12\0"
	.align 4
LC15:
	.ascii "------------------------AFTER------------------------------\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	push	ebp
	mov	ebp, esp
	and	esp, -16
	sub	esp, 224
	call	___main
	mov	DWORD PTR [esp+220], 287454020
	mov	DWORD PTR [esp+216], 1432778632
	mov	DWORD PTR [esp], OFFSET FLAT:LC2
	call	_puts
	mov	edx, DWORD PTR [esp+220]
	mov	eax, DWORD PTR [esp+220]
	mov	DWORD PTR [esp+12], edx
	mov	DWORD PTR [esp+8], eax
	lea	eax, [esp+220]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC3
	call	_printf
	mov	edx, DWORD PTR [esp+216]
	mov	eax, DWORD PTR [esp+216]
	mov	DWORD PTR [esp+12], edx
	mov	DWORD PTR [esp+8], eax
	lea	eax, [esp+216]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC4
	call	_printf
	lea	eax, [esp+16]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC5
	call	_printf
	mov	DWORD PTR [esp+4], OFFSET FLAT:_secret_function
	mov	DWORD PTR [esp], OFFSET FLAT:LC6
	call	_printf
	mov	DWORD PTR [esp], OFFSET FLAT:LC7
	call	_puts
	mov	DWORD PTR [esp], OFFSET FLAT:LC8
	call	_puts
	mov	DWORD PTR [esp], OFFSET FLAT:LC9
	call	_printf
	lea	eax, [esp+16]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC10
	call	_scanf
	lea	eax, [esp+16]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC11
	call	_printf
	lea	eax, [esp+16]
	mov	DWORD PTR [esp], eax
	call	_strlen
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC12
	call	_printf
	mov	eax, DWORD PTR [esp+220]
	cmp	eax, -559038242
	jne	L4
	mov	DWORD PTR [esp], OFFSET FLAT:LC13
	call	_puts
	jmp	L5
L4:
	mov	DWORD PTR [esp], OFFSET FLAT:LC14
	call	_puts
L5:
	mov	DWORD PTR [esp], OFFSET FLAT:LC15
	call	_puts
	mov	edx, DWORD PTR [esp+220]
	mov	eax, DWORD PTR [esp+220]
	mov	DWORD PTR [esp+12], edx
	mov	DWORD PTR [esp+8], eax
	lea	eax, [esp+220]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC3
	call	_printf
	mov	edx, DWORD PTR [esp+216]
	mov	eax, DWORD PTR [esp+216]
	mov	DWORD PTR [esp+12], edx
	mov	DWORD PTR [esp+8], eax
	lea	eax, [esp+216]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC4
	call	_printf
	lea	eax, [esp+16]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC5
	call	_printf
	mov	DWORD PTR [esp+4], OFFSET FLAT:_secret_function
	mov	DWORD PTR [esp], OFFSET FLAT:LC6
	call	_printf
	mov	DWORD PTR [esp], OFFSET FLAT:LC7
	call	_puts
	mov	eax, 0
	leave
	ret
	.ident	"GCC: (tdm-1) 5.1.0"
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_scanf;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
