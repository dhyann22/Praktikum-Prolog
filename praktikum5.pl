%fakta silsilah keluarga
%
ibubapak(ahmad).
ibubapak(aliya,amin).
ibubapak(ahmad,amin).
ibubapak(ahmad,lita).
ibubapak(amin,ana).
ibubapak(amin,tina).
ibubapak(tina,aris).


%jk(nama,perempuan/lelaki).
%perempuan(nama).

perempuan(aliya).
perempuan(liza).
perempuan(ana).
lelaki(ahmad).
lelaki(amin).
lelaki(aris).

%aturan
%
kakek_nenek(X,Z):-ibubapak(X,Y),ibubapak(Y,Z).
kakek(X,Z):-ibubapak(X,Y),ibubapak(Y,Z),lelaki(X).
nenek(X,Z):-ibubapak(X,Y),ibubapak(Y,Z),perempuan(X).
anak(Y,X):-ibubapak(X,Y).
kakek_nenek1(X,Z):-anak(Z,Y),anak(Y,X).
kakek1(X,Z):-anak(Z,Y),anak(Y,X),lelaki(X).
saudara_tina(Y):-anak(Y,X),X=amin,not(Y=tina).
saudara_tina1(Y):-ibubapak(X,Y),X=amin,not(Y=tina).
