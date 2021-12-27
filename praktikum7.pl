%member atau keanggotaan

keanggotaan(X,[X|Ekor]).
keanggotaan(X,[Kepala|Ekor]):-keanggotaan(X,Ekor).
%append atau penggabungan
gabungkan([],S,S).
gabungkan([K|S1],S2,[K|S3]):-gabungkan(S1,S2,S3).
%hapus
hapus(X,[X|Ekor],Ekor).
hapus(X,[Y|Ekor],[Y|Ekor1]):-hapus(X,Ekor,Ekor1).

