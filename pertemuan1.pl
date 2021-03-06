%fakta
persegi_panjang(panjang,112).
persegi_panjang(lebar,58).
segitiga(alas,100).
segitiga(tinggi,200).

%aturan
luaspersegipanjang(L):-
    persegi_panjang(panjang,X),
    persegi_panjang(lebar,Y),
    L is X*Y.
luas_segitiga(LS):-
    segitiga(alas,A),
    segitiga(tinggi,T),
    LS is 1/2*A*T.
keliling_persegipanjang(KPL):-
    persegi_panjang(panjang,X),
    persegi_panjang(lebar,Y),
    KPL is 2*X+Y.

%aturan_gabungan
hit(L,LS,KPL):-
    persegi_panjang(panjang,X),
    persegi_panjang(lebar,Y),
    segitiga(alas,A),
    segitiga(tinggi,T),
    L is X*Y,
    LS is 1/2*A*T,
    KPL is 2*X+Y.
