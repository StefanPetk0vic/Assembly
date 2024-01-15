.386
.model flat,c
.data

mat word 3,4,8,7,1,1,5,6,7,3,2,4
n word 3
m word 4

rez dword ?

.code
main PROC
mov eax,0		;eax nam je br koji uporedjujemo 'x'

movzx ebx,N		;ebx za 'x'
dec ebx
shl ebx,1
sub ebx,2		;2*(N-1)

movzx esi,N		;esi za 'x' 
shl esi,1		;2*(N)
movzx eax,mat[esi+ebx]	;esi<-ACC

movzx eax,MAT[esi+ebx]	;Ubacim 'x' u eax
mov ebx,0
mov edx,0
spolj:
mov esi,0
movzx ecx,M
un:
movzx edx,mat[ebx+esi]	;Zbog razlike u velicini
cmp eax,edx
jge veciX
inc rez
veciX:
add esi,6
loop un		;un loop zavisi od ecx 
add ebx,2
movzx edi,N
dec edi
shl edi,1
cmp edi,ebx		;dok spoljasni gleda kad je ebx veci od edi
jge spolj

ret
main ENDP
end main
