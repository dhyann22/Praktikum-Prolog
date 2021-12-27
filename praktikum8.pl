%Penyuplai(Nomor_Penyuplai,Nama_Penyuplai,Kota)

penyuplai(10,john,bandung).
penyuplai(20,amin,jakarta).
penyuplai(25,kamal,medan).

%Produk(Kode_Barang,Nama_Barang,Harga)

produk(a11,sabun,100).
produk(b22,beras,400).
produk(c33,minyak,500).

%Penyuplai_Produk(Nomor_Penyuplai,Kode_Barang,Kuantitas)

penyuplai_produk(10,a11,200).
penyuplai_produk(20,a11,30).
penyuplai_produk(20,b22,300).
penyuplai_produk(25,c33,30).

%aturan untuk soal no 1
%Menampilkan nama dan kota berdasarkan no penyuplai

cek(Nama_Penyuplai,Kota):-
    penyuplai(No_Penyuplai,Nama_Penyuplai,Kota),
    No_Penyuplai = 10.

%aturan untuk soal no 2
%Menampilkan nama penyuplai berdasarkan kode barang a11

aturan(Kode_Barang,Nama_Penyuplai):-
    produk(Kode_Barang,_,_),
    penyuplai_produk(No_Penyuplai,Kode_Barang,_),
    penyuplai(No_Penyuplai,Nama_Penyuplai,_),
    Kode_Barang = a11.

aturan1(Nama_Penyuplai,Nama_Barang,Kuantitas):-
    penyuplai(No_Penyuplai,Nama_Penyuplai,_),
    penyuplai_produk(No_Penyuplai,Kode_Barang,Kuantitas),
    produk(Kode_Barang,Nama_Barang,_),
    Kode_Barang = a11,
    Kuantitas = 200.

aturan2(Nama_Penyuplai,Nama_Barang,Kuantitas):-
    penyuplai_produk(No_Penyuplai,Kode_Barang,Kuantitas),
    produk(Kode_Barang,Nama_Barang,_),
    penyuplai(No_Penyuplai,Nama_Penyuplai,_).

aturan3:-
    penyuplai_produk(No_Penyuplai,Kode_Barang,Kuantitas),
    produk(Kode_Barang,_,_),
    penyuplai(No_Penyuplai,Nama_Penyuplai,_),
    write('Masukan Kode Barang = '),read(Kode_Barang),nl,
    write('Nama Penyuplai = '),read(Nama_Penyuplai),nl,
    write('Kuantitas Barang = '),read(Kuantitas).
