;.386
;.model flat, c

;MessageBoxA     proto STDCALL :dword, :dword, :dword, :dword


.386
.model flat, c
option casemap :none

;include d:\masm32\include\masm32.inc
include d:\masm32\include\windows.inc
;include d:\masm32\include\kernel32.inc
;include d:\masm32\macros\macros.asm

;includelib d:\masm32\lib\masm32.lib
;includelib d:\masm32\lib\kernel32.lib


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
