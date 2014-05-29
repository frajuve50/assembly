SECTION .data
	
SECTION .bss
	
	array resb 10
	array2 resb 10

SECTION .text

global _start

_start:

	
	mov eax, 2347
inizio:	cmp eax, 0
	je  stampa
	mov esi, array
	mov edx, 0
	mov ebx, 10
	div ebx
	add edx, 30h
	push edx
	inc esi
	inc edi
	jmp inizio


stampa:
	cmp edi, 0
	je esci
	pop edx
	mov [array2], edx
	push eax
	mov eax, 4
	mov ebx, 1
	mov ecx, array2
	mov edx, 1
	int 80h		
	pop eax
	jmp stampa
	

	


esci: 
	mov eax, 1
	mov ebx, 0 
	int 80h	
	
