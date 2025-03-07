.intel_syntax noprefix

global ft_strlen

ft_strlen:
	xor rcx, rcx
	jmp count

count:
	cmp [rdi + rcx], 0
	je end
	inc rcx
	jmp count

end:
	mov rax, rcx
	ret
