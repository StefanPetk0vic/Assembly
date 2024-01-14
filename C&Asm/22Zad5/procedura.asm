.386
.model flat,c
.stack 4096
PUBLIC pp
.code
pp PROC
push ebp
mov ebp,esp
pushfd
push ebx
mov eax,[ebp+8]
mov ebx,[ebp+12]
cmp eax,ebx
ja p1
mov eax,ebx
p1:
pop ebx
popfd
pop ebp
ret
pp ENDP
end
