%fakta
%
%A.gajah
%B.kuda
%C.keledai
%D.kambing
%E.kelinci
%
lebihbesar(gajah,kuda).
lebihbesar(kuda,keledai).
lebihbesar(keledai,kambing).
lebihbesar(kambing,keledai).

%aturan
lebih_besar(gajah,kuda):-
    lebihbesar(gajah,kuda).
lebih_besar(gajah_keledai):-
    lebihbesar(gajah,kuda),
    lebihbesar(kuda,keledai).
lebih_besar(gajah,kambing):-
    lebihbesar(gajah,kuda),
    lebihbesar(kuda,keledai),
    lebihbesar(keledai,kambing).
lebih_besar(gajah,kelinci):-
    lebihbesar(gajah,kuda),
    lebihbesar(kuda,keledai),
    lebihbesar(keledai,kambing),
    lebihbesar(kambing,kelinci).
lebih_besar(kuda,kelinci):-
    lebihbesar(kuda,keledai),
    lebihbesar(keledai,kambing),
    lebihbesar(kambing,kelinci).
lebih_besar(keledai,kelinci):-
    lebihbesar(keledai,kambing),
    lebihbesar(kambing,kelinci).

urutbesar(A,B,C,D,E):-
    lebihbesar(A,B),
    lebihbesar(B,C),
    lebihbesar(C,D),
    lebihbesar(D,E).

lebihkecil(kuda,gajah):-lebih_besar(gajah,kuda).
lebihkecil(keledai,gajah):-lebih_besar(gajah,keledai).
lebihkecil(kambing,gajah):-lebih_besar(gajah,kambing).
lebihkecil(kelinci,gajah):-lebih_besar(gajah,kelinci).
lebihkecil(kambing,kuda):-lebih_besar(kuda,kambing).
lebihkecil(kelinci,kuda):-lebih_besar(kuda,kelinci).
lebihkecil(kelinci,keledai):-lebih_besar(keledai,kelinci).

urutkecil(E,D,C,B,A):- urutbesar(A,B,C,D,E).

tekanEnter:-urutbesar(A,B,C,D,E),
    write('Hewan yang paling besar adalah'),
    write(A).


