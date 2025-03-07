.intel_syntax noprefix

global ft_strcpy

ft_strcpy:
	xor rcx, rcx
	jmp copy

copy:
	mov r8b, [rsi + rcx]
	mov [rdi + rcx], r8b
	cmp r8b, 0
	je end
	inc rcx
	jmp copy
end:
	mov rax, rdi
	ret
