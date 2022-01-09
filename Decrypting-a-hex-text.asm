.data
    formatCitire: .asciz "%s"
    formatAfisare: .asciz "%s\n"
    suma: .long 0
    string: .space 200
    bin: .space 800
    v10: .long 10
    v12: .long 12
    indexbin: .long 0
    afisare: .space 401
    indexfinal: .long 0
    
.text

.global main

main:
   	pushl $string
   	pushl $formatCitire
   	call scanf
   	popl %ebx
   	popl %ebx

    	movl $string, %edi
	movl $bin, %esi
	xorl %ecx, %ecx

et_for:

	movb (%edi, %ecx, 1), %al 
	
	cmp $0, %al
	je et_main2

	cmp $48, %al
	je et_0
	
	cmp $49, %al
	je et_1
	
	cmp $50, %al
	je et_2
	
    	cmp $51, %al
    	je et_3
    	
    	cmp $52, %al
    	je et_4
    	
    	cmp $53, %al
    	je et_5
    	
    	cmp $54, %al
	je et_6
	
    	cmp $55, %al
	je et_7
	
    	cmp $56, %al
	je et_8
	
    	cmp $57, %al
	je et_9
	
    	cmp $65, %al
    	je et_A
    	
    	cmp $66, %al
    	je et_B
    	
    	cmp $67, %al
    	je et_C
    	
    	cmp $68, %al
    	je et_D
    	
    	cmp $69, %al
    	je et_E
    	
    	cmp $70, %al
    	je et_F

et_0:
    	pushl %ecx
    	
    	movl indexbin, %ecx

	movb $48, (%esi, %ecx, 1)
	incl %ecx
	
   	movb $48, (%esi, %ecx, 1)
	incl %ecx
	
    	movb $48, (%esi, %ecx, 1)
	incl %ecx
	
    	movb $48, (%esi, %ecx, 1)
	incl %ecx

    	addl $4, indexbin
    	
    	popl %ecx
    	
    	jmp et_contoar

et_1:
    	pushl %ecx
    	
    	movl indexbin, %ecx
    
    	movb $48, (%esi, %ecx, 1)
	incl %ecx
	
    	movb $48, (%esi, %ecx, 1)
	incl %ecx
	
    	movb $48, (%esi, %ecx, 1)
	incl %ecx
		
	movb $49, (%esi, %ecx, 1)
	incl %ecx

    	addl $4, indexbin
    	
    	popl %ecx
    	
    	jmp et_contoar

et_2:
    	pushl %ecx
    	
    	movl indexbin, %ecx
    
    	movb $48, (%esi, %ecx, 1)
	incl %ecx
	
    	movb $48, (%esi, %ecx, 1)
	incl %ecx
	
    	movb $49, (%esi, %ecx, 1)
	incl %ecx
	
    	movb $48, (%esi, %ecx, 1)
	incl %ecx

    	addl $4, indexbin
    	
    	popl %ecx
    	jmp et_contoar

et_3:
    	pushl %ecx
    	
    	movl indexbin, %ecx
    
    	movb $48, (%esi, %ecx, 1)
	incl %ecx
    	
    	movb $48, (%esi, %ecx, 1)
	incl %ecx
    	
    	movb $49, (%esi, %ecx, 1)
	incl %ecx
    	
    	movb $49, (%esi, %ecx, 1)
	incl %ecx

    	addl $4, indexbin
    	
    	popl %ecx
    	jmp et_contoar

et_4:
        pushl %ecx
    	
    	movl indexbin, %ecx
    
    	movb $48, (%esi, %ecx, 1)
	incl %ecx
    	
    	movb $49, (%esi, %ecx, 1)
	incl %ecx
    	
    	movb $48, (%esi, %ecx, 1)
	incl %ecx
    	
    	movb $48, (%esi, %ecx, 1)
	incl %ecx

    	addl $4, indexbin
    	
    	popl %ecx
    	jmp et_contoar

    
et_5:
        pushl %ecx
    	
    	movl indexbin, %ecx
    
    	movb $48, (%esi, %ecx, 1)
	incl %ecx
    	
    	movb $49, (%esi, %ecx, 1)
	incl %ecx
    	
    	movb $48, (%esi, %ecx, 1)
	incl %ecx
    	
    	movb $49, (%esi, %ecx, 1)
	incl %ecx

    	addl $4, indexbin
    	
    	popl %ecx
    	jmp et_contoar

    
et_6:
        pushl %ecx
    	
    	movl indexbin, %ecx
    
    	movb $48, (%esi, %ecx, 1)
	incl %ecx
    	
    	movb $49, (%esi, %ecx, 1)
	incl %ecx
    	
    	movb $49, (%esi, %ecx, 1)
	incl %ecx
    	
    	movb $48, (%esi, %ecx, 1)
	incl %ecx

    	addl $4, indexbin
    	
    	popl %ecx
    	jmp et_contoar

    
et_7:
        pushl %ecx
    	
    	movl indexbin, %ecx
    
    	movb $48, (%esi, %ecx, 1)
	incl %ecx
    	
    	movb $49, (%esi, %ecx, 1)
	incl %ecx
    	
    	movb $49, (%esi, %ecx, 1)
	incl %ecx
    	
    	movb $49, (%esi, %ecx, 1)
	incl %ecx

    	addl $4, indexbin
    	
    	popl %ecx
    	jmp et_contoar

    
et_8:
        pushl %ecx
    	
    	movl indexbin, %ecx
    
    	movb $49, (%esi, %ecx, 1)
	incl %ecx
    	
    	movb $48, (%esi, %ecx, 1)
	incl %ecx
    	
    	movb $48, (%esi, %ecx, 1)
	incl %ecx
    	
    	movb $48, (%esi, %ecx, 1)
	incl %ecx

    	addl $4, indexbin
    	
    	popl %ecx
    	jmp et_contoar

    
et_9:
        pushl %ecx
    	
    	movl indexbin, %ecx
    
    	movb $49, (%esi, %ecx, 1)
	incl %ecx
    	
    	movb $48, (%esi, %ecx, 1)
	incl %ecx
    	
    	movb $48, (%esi, %ecx, 1)
	incl %ecx
    	
    	movb $49, (%esi, %ecx, 1)
	incl %ecx

    	addl $4, indexbin
    	
    	popl %ecx
    	jmp et_contoar

    
et_A:
        pushl %ecx
    	
    	movl indexbin, %ecx
    
    	movb $49, (%esi, %ecx, 1)
	incl %ecx
    	
    	movb $48, (%esi, %ecx, 1)
	incl %ecx
    	
    	movb $49, (%esi, %ecx, 1)
	incl %ecx
    	
    	movb $48, (%esi, %ecx, 1)
	incl %ecx

    	addl $4, indexbin
    	
    	popl %ecx
    	jmp et_contoar

    
et_B:
        pushl %ecx
    	
    	movl indexbin, %ecx
    
    	movb $49, (%esi, %ecx, 1)
	incl %ecx
    	
    	movb $48, (%esi, %ecx, 1)
	incl %ecx
    	
    	movb $49, (%esi, %ecx, 1)
	incl %ecx
    	
    	movb $49, (%esi, %ecx, 1)
	incl %ecx

    	addl $4, indexbin
    	
    	popl %ecx
    	jmp et_contoar

    
et_C:
        pushl %ecx
    	
    	movl indexbin, %ecx
    
    	movb $49, (%esi, %ecx, 1)
	incl %ecx
    	
    	movb $49, (%esi, %ecx, 1)
	incl %ecx
    	
    	movb $48, (%esi, %ecx, 1)
	incl %ecx
    	
    	movb $48, (%esi, %ecx, 1)
	incl %ecx

    	addl $4, indexbin
    	
    	popl %ecx
    	jmp et_contoar

    
et_D:
        pushl %ecx
    	
    	movl indexbin, %ecx
    
    	movb $49, (%esi, %ecx, 1)
	incl %ecx
    	
    	movb $49, (%esi, %ecx, 1)
	incl %ecx
    	
    	movb $48, (%esi, %ecx, 1)
	incl %ecx
    	
    	movb $49, (%esi, %ecx, 1)
	incl %ecx

    	addl $4, indexbin
    	
    	popl %ecx
    	jmp et_contoar

    
et_E:
       pushl %ecx
    	
    	movl indexbin, %ecx
    
    	movb $49, (%esi, %ecx, 1)
	incl %ecx
    	
    	movb $49, (%esi, %ecx, 1)
	incl %ecx
    	
    	movb $49, (%esi, %ecx, 1)
	incl %ecx
    	
    	movb $48, (%esi, %ecx, 1)
	incl %ecx

    	addl $4, indexbin
    	
    	popl %ecx
    	jmp et_contoar

    
et_F:
       pushl %ecx
    	
    	movl indexbin, %ecx
    
    	movb $49, (%esi, %ecx, 1)
	incl %ecx
    	
    	movb $49, (%esi, %ecx, 1)
	incl %ecx
    	
    	movb $49, (%esi, %ecx, 1)
	incl %ecx
    	
    	movb $49, (%esi, %ecx, 1)
	incl %ecx

    	addl $4, indexbin
    	
    	popl %ecx
    	jmp et_contoar
    	
et_contoar:

	incl %ecx
	jmp et_for
 

et_main2:

    movl $bin, %edi
    movl $afisare, %esi
    movl $1, %ecx

et_for2:

    	movb (%edi, %ecx, 1), %al 
    	
	cmp $0, %al
	je et_afisare

    	cmp $49, %al
    	je et_op 
    
    	movl $0, suma
    	incl %ecx
    	movb (%edi, %ecx, 1), %al 
    	
	cmp $49, %al
    	je et_var

    	incl %ecx
    	movb (%edi, %ecx, 1), %al 
    	
	cmp $49, %al
    	je et_addminus

    	incl %ecx
    	jmp et_numar  
et_var:
    incl %ecx
    incl %ecx
    incl %ecx
    
    jmp et_vr

et_vr:
    movl %ecx, %eax
    movl $0, %edx
    divl v12

    cmp $5, %edx
    je et_v164
    
    cmp $6, %edx
    je et_v132
    
    cmp $7, %edx
    je et_v116
    
    cmp $8, %edx
    je et_v18
    
    cmp $9, %edx
    je et_v14
    
    cmp $10, %edx
    je et_v12
    
    cmp $11, %edx
    je et_v11
    
    cmp $0, %edx
    je et_vf

et_v164:

    movb (%edi, %ecx, 1), %al
     
    cmp $49, %al
    je et_v64
    
    incl %ecx
    
    jmp et_vr

et_v64:

    addl $64, suma
    incl %ecx
    jmp et_vr

et_v132:

    movb (%edi, %ecx, 1), %al
     
    cmp $49, %al
    je et_v32
    
    incl %ecx
    
    jmp et_vr

et_v32:

    addl $32, suma
    incl %ecx
    jmp et_vr

et_v116:

    movb (%edi, %ecx, 1), %al
     
    cmp $49, %al
    je et_v16
    
    incl %ecx
    
    jmp et_vr

et_v16:

    addl $16, suma
    incl %ecx
    jmp et_vr

et_v18:

    movb (%edi, %ecx, 1), %al
     
    cmp $49, %al
    je et_v8
    
    incl %ecx
    
    jmp et_vr

et_v8:

    addl $8, suma
    incl %ecx

    jmp et_vr

et_v14:

    movb (%edi, %ecx, 1), %al
     
    cmp $49, %al
    je et_v4
    
    incl %ecx
    
    jmp et_vr

et_v4:

    addl $4, suma
    incl %ecx

    jmp et_vr

et_v12:

    movb (%edi, %ecx, 1), %al 
    
    cmp $49, %al
    je et_v2
    
    incl %ecx
    
    jmp et_vr

et_v2:

    addl $2, suma
    incl %ecx

    jmp et_vr

et_v11:

    movb (%edi, %ecx, 1), %al 
    
    cmp $49, %al
    je et_v1
    
    incl %ecx
    
    jmp et_vr

et_v1:

    addl $1, suma
    incl %ecx
    jmp et_vr

et_vf:

    incl %ecx
    pushl %ecx
    movl indexfinal, %ecx
    
    movl suma, %eax

    movl %eax, (%esi, %ecx, 1)
    incl %ecx
    movb $32, (%esi, %ecx, 1)
    incl %ecx

    addl $2, indexfinal
    popl %ecx

    jmp et_for2 
et_op:

    incl %ecx
    incl %ecx
    incl %ecx
    incl %ecx
    incl %ecx
    incl %ecx
    incl %ecx
    incl %ecx
    
    movb (%edi, %ecx, 1), %al
    
    cmp $49, %al
    je et_div

    incl %ecx
    
    movb (%edi, %ecx, 1), %al
    
    cmp $49, %al
    je et_submul

    incl %ecx
    
    movb (%edi, %ecx, 1), %al
    
    cmp $49, %al
    je et_add

    jmp et_let

et_submul:

    incl %ecx
    
    movb (%edi, %ecx, 1), %al
    
    cmp $49, %al
    je et_mul

    jmp et_sub

et_let:

    incl %ecx
    incl %ecx
    pushl %ecx
    
    movl indexfinal, %ecx

    movb $108, (%esi, %ecx, 1)
    incl %ecx
    
    movb $101, (%esi, %ecx, 1)
    incl %ecx
    
    movb $116, (%esi, %ecx, 1)
    incl %ecx
    
    movb $32, (%esi, %ecx, 1)
    incl %ecx

    addl $4, indexfinal
    popl %ecx
    jmp et_for2
    
et_sub:

    incl %ecx
    incl %ecx
    pushl %ecx
    
    movl indexfinal, %ecx

    movb $115, (%esi, %ecx, 1)
    incl %ecx
    
    movb $117, (%esi, %ecx, 1)
    incl %ecx
    
    movb $98, (%esi, %ecx, 1)
    incl %ecx
    
    movb $32, (%esi, %ecx, 1)
    incl %ecx

    addl $4, indexfinal
    popl %ecx
    
    jmp et_for2
    
et_add:

    incl %ecx
    incl %ecx
    pushl %ecx
    
    movl indexfinal, %ecx

    movb $97, (%esi, %ecx, 1)
    incl %ecx
    
    movb $100, (%esi, %ecx, 1)
    incl %ecx
    
    movb $100, (%esi, %ecx, 1)
    incl %ecx
    
    movb $32, (%esi, %ecx, 1)
    incl %ecx

    addl $4, indexfinal
    popl %ecx
    
    jmp et_for2



et_mul:

    incl %ecx
    incl %ecx
    pushl %ecx
    
    movl indexfinal, %ecx

    movb $109, (%esi, %ecx, 1)
    incl %ecx
    
    movb $117, (%esi, %ecx, 1)
    incl %ecx
    
    movb $108, (%esi, %ecx, 1)
    incl %ecx
    
    movb $32, (%esi, %ecx, 1)
    incl %ecx

    addl $4, indexfinal
    popl %ecx
    
    jmp et_for2

et_div:

    incl %ecx
    incl %ecx
    incl %ecx
    incl %ecx
    pushl %ecx
    
    movl indexfinal, %ecx

    movb $100, (%esi, %ecx, 1)
    incl %ecx
    
    movb $105, (%esi, %ecx, 1)
    incl %ecx
    
    movb $118, (%esi, %ecx, 1)
    incl %ecx
	
    movb $32, (%esi, %ecx, 1)
    incl %ecx

    addl $4, indexfinal
    popl %ecx
    jmp et_for2

et_addminus:

    incl %ecx
    pushl %ecx
    
    movl indexfinal, %ecx
    
    movb $45, (%esi, %ecx, 1)
    incl %ecx

    addl $1, indexfinal
    
    popl %ecx
    jmp et_numar

et_numar:

    movl %ecx, %eax
    xor %edx, %edx
    divl v12

    cmp $4, %edx
    je et_1128
    
    cmp $5, %edx
    je et_164
    
    cmp $6, %edx
    je et_132
    
    cmp $7, %edx
    je et_116
    
    cmp $8, %edx
    je et_18
    
    cmp $9, %edx
    je et_14
    
    cmp $10, %edx
    je et_12
    
    cmp $11, %edx
    je et_11
    
    cmp $0, %edx
    je et_cr  

et_1128:

    movb (%edi, %ecx, 1), %al 
    
    cmp $49, %al
    je et_128_
    
    incl %ecx
    
    jmp et_numar
et_128_:

    addl $128, suma
    incl %ecx
    jmp et_numar

et_164:

    movb (%edi, %ecx, 1), %al
     
    cmp $49, %al
    je et_64_
    
    incl %ecx
    
    jmp et_numar
    
et_64_:

    addl $64, suma
    incl %ecx
    jmp et_numar

et_132:
    movb (%edi, %ecx, 1), %al
     
    cmp $49, %al
    je et_32_
    
    incl %ecx
    
    jmp et_numar
    
et_32_:

    addl $32, suma
    incl %ecx
    jmp et_numar

et_116:
    movb (%edi, %ecx, 1), %al
     
    cmp $49, %al
    je et_16_
    
    incl %ecx
    
    jmp et_numar
    
et_16_:

    addl $16, suma
    incl %ecx
    jmp et_numar

et_18:

    movb (%edi, %ecx, 1), %al
     
    cmp $49, %al
    je et_8_
    
    incl %ecx
    
    jmp et_numar
    
et_8_:

    addl $8, suma
    incl %ecx
    jmp et_numar

et_14:
    movb (%edi, %ecx, 1), %al
     
    cmp $49, %al
    je et_4_
    
    incl %ecx
    
    jmp et_numar
    
et_4_:

    addl $4, suma
    incl %ecx
    jmp et_numar

et_12:
    movb (%edi, %ecx, 1), %al 
    
    cmp $49, %al
    je et_2_
    
    incl %ecx
    
    jmp et_numar
    
et_2_:

    addl $2, suma
    incl %ecx
    jmp et_numar

et_11:
    movb (%edi, %ecx, 1), %al 
    
    cmp $49, %al
    je et_1_
    
    incl %ecx
    
    jmp et_numar
    
et_1_:

    addl $1, suma
    incl %ecx
    jmp et_numar

et_cr:

    incl %ecx
    
    pushl %ecx
    movl indexfinal, %ecx
    
    cmp $100, suma
    jge et_nr100
    
    cmp $10, suma
    jge et_nr10

    jmp et_nr1

et_nr100:
    
    movl suma, %eax
    movl $0, %edx
    divl v10
    movl %edx, suma
    movl $0, %edx
    divl v10

    addl $48, %eax
    addl $48, %edx

    movl %eax, (%esi, %ecx, 1)
    incl %ecx
    
    movl %edx, (%esi, %ecx, 1)
    incl %ecx

    movl suma, %eax
    addl $48, %eax
    
    movl %eax, (%esi, %ecx, 1)
    incl %ecx

    movb $32, (%esi, %ecx, 1)
    incl %ecx

    addl $4, indexfinal
    popl %ecx
    
    jmp et_for2

et_nr10:
    
    movl suma, %eax
    movl $0, %edx
    divl v10
    addl $48, %eax
    addl $48, %edx

    movl %eax, (%esi, %ecx, 1)
    incl %ecx
    
    movl %edx, (%esi, %ecx, 1)
    incl %ecx
    
    movb $32, (%esi, %ecx, 1)
    incl %ecx

    addl $3, indexfinal
    popl %ecx
    
    jmp et_for2

et_nr1:

    movl suma, %eax
    addl $48, %eax

    movl %eax, (%esi, %ecx, 1)
    incl %ecx
    
    movb $32, (%esi, %ecx, 1)
    incl %ecx

    addl $2, indexfinal
    popl %ecx
    
    jmp et_for2

et_afisare:

    pushl $afisare
    pushl $formatAfisare
    call printf
    popl %ebx
    popl %ebx

    jmp et_exit

et_exit:

    mov $1, %eax
    xor %ebx, %ebx
    int $0x80
