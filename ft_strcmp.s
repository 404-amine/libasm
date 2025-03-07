.intel_syntax noprefix

global ft_strcmp


ft_strcmp:
	test rdi, rdi
	jz returnneg
	test rsi, rsi
	jz returnpos
	xor rcx, rcx
	jmp compare

compare:
	mov r8b, [rdi + rcx]
	mov r9b, [rsi + rcx]
	cmp r8b, r9b
	jne diff
	cmp r8b, 0
	je end
	inc rcx
	jmp compare

diff:
	sub r8b, r9b
	movsx rax, r8b
	ret

returnneg:
	mov rax, -1
	ret

returnpos:
	mov rax, 1
	ret
end:
	xor rax, rax
	ret	
