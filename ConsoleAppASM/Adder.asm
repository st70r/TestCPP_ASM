.386
.model flat, c
option casemap :none


include d:\masm32\include\windows.inc

MessageBoxA     proto STDCALL :dword, :dword, :dword, :dword

.data
	msgbox_caption          DB 'masm', 0

.code

AdderASM proc
	push ebp
	mov ebp, esp

	mov eax, [ebp + 8]   ;eax = 'a'
	mov ecx, [ebp +	12]  ;eax = 'b'
	mov edx, [ebp + 16]  ;eax = 'c'

	add eax, ecx         ;eax = 'a' + 'b'
	add eax, edx         ;eax = 'a' + 'b' + 'c'

	pop ebp

	ret
AdderASM endp


MsgBoxA PROC
    invoke MessageBoxA, 0, offset msgbox_caption, offset msgbox_caption, MB_OK
    ret
MsgBoxA ENDP

end
