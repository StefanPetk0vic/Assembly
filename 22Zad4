;Zadatak je da se sumiraju sve vrednosti iza 0
;Ovo je bio klkv 2 2022.
.386
.model flat,c
.data

niz dd 3,7,0,4,8,0,2,7,6    ;Niz je naglasen da bude 32b
n dd 9       ;Ostalo je po izboru
Zbir dd ?

.code
main PROC
mov ecx,n
mov ebx,0
lea esi,niz    ;U ovom primeru sam koristio registarsko-indirektno adresiranje
p1:
mov eax,[esi]  ;prebacujemo vrednosti iz niza u eax
inc ebx        ;koliko je udaljen broj 0 od pocetka
cmp eax,0
jz nula        ;nije naglaseno da je svaka 0 nova suma 
add esi,4
loop p1        
jmp kraj       ;U slucaju da nema 0 idemo odmah na kraj

nula:
add esi,4      ;esi je stao na 0 pomeramo ga za 1 ispred
mov ecx,n    
sub ecx,ebx    ;ecx nam treba N-brojac
mov eax,0
finale:
mov eax,[esi]
add Zbir,eax
add esi,4      ;loop za sumu
loop finale
kraj:
ret
main ENDP
end main
