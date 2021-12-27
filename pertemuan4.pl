%fakta

%aturan1
i0:-write('Masukkan nama Anda:'),read(Nama),nl,
    write('Nama Anda adalah:'),write(Nama).

%aturan2
hitung:-write('Perhitungan Luas Segitiga'),nl,
        write('Masukkan Alas Segitiga:'),read(A),nl,
        write('Masukkan Tinggi Segitiga:'),read(T),nl,
        Luas is A*T/2,
        write('Alas Segitiga:'),write(A),nl,
        write('Tinggi Segitiga:'),write(T),nl,
        write('Jadi, Luas Segitiga adalah:'),write(Luas).

gabung:-write('Ini adalah gabungan dari program'),nl,
        write('Silahkan pilih program yang diinginkan'),nl,
        write('Hitung luas Segitiga'),nl,
        write('Hitung luas Persegi'),nl,
        write('Hitung luas Persegipankang'),nl,
        write('Hitung Vol Kubus'),nl,
        write('Hitung Vol Balok'),nl,
        write('Silahkan Pilih:'),read(Pilihan),nl,
        write('Pilihan anda adalah:'),write(Pilihan),nl,
      ( Pilihan = 1,
        write('Perhitungan Luas Segitiga'),nl,
        write('Masukkan Alas Segitiga:'),read(A),nl,
        write('Masukkan Tinggi Segitiga:'),read(T),nl,
        Luas is A*T/2,
        write('Alas Segitiga:'),write(A),nl,
        write('Tinggi Segitiga:'),write(T),nl,
        write('Jadi, Luas Segitiga adalah:'),write(Luas),nl,nl,
        gabung;
       Pilihan = 2,
        write('Perhitungan Luas Persegi'),nl,
        write('Masukkan Sisi Persegi:'),read(A),nl,
        Luas is A*A,
        write('Sisi Persegi:'),write(A),nl,
        write('Jadi, Luas Persegi adalah:'),write(Luas),nl,nl,
        gabung;
       Pilihan = 3,
        write('Perhitungan Luas Persegipanjang'),nl,
        write('Masukkan Panjang Persegipanjang:'),read(A),nl,
        write('Masukkan Lebar Persegipanjang:'),read(T),nl,
        Luas is A*T,
        write('Panjang Persegipanjang:'),write(A),nl,
        write('Lebar Persegi Panjang:'),write(T),nl,
        write('Jadi, Luas Persegipanjang adalah:'),write(Luas),nl,nl,
        gabung;
       Pilihan = 4,
        write('Perhitungan Volume Kubus'),nl,
        write('Masukkan Sisi Kubus:'),read(A),nl,
        Luas is A*A*A,
        write('Sisi Kubus:'),write(A),nl,
        write('Jadi, Volume Kubus adalah:'),write(Luas),nl,nl,gabung;
       Pilihan = 5,
         write('Perhitungan Volume Balok'),nl,
        write('Masukkan Panjang Balok:'),read(A),nl,
        write('Masukkan Lebar Balok:'),read(T),nl,
        write('Masukkan Tinggi Balok:'),read(M),nl,
        Luas is A*T*M,
        write('Panjang Balok:'),write(A),nl,
        write('Lebar Balok:'),write(T),nl,
        write('Tinggi Balok:'),write(M),nl,
        write('Jadi, Luas Segitiga adalah:'),write(Luas),nl,nl,
        gabung).
