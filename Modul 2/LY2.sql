-- Nama : Luis
-- Nim  : 23241048
-- Kelas : B
-- Modul : 2 (select)

-- Membuat database
CREATE DATABASE pti_mart;

-- menggunakan database
USE pti_mart;     

-- cek kolom dalam setiap tabel
DESCRIBE ms_pelanggan;
DESCRIBE ms_produk;
DESCRIBE tr_penjualan;

-- select 
-- menggunakan select untuk 1 tabel
-- menggambil kolom nama produk dari tabel produk
SELECT nama_produk From ms_produk;


-- Mengambil lebih dari 1 kolom dari sebuah tabel
 SELECT nama_produk, harga FROM ms_produk;
 
 -- mengambil semua kolom dari sebuah tabel
 SELECT * FROM ms_produk;
 
 -- Latihan 
 -- mengambil kode produk dan nama produk dari tabel produk
 SELECT kode_ produk, nama_produk FROM ms_produk;
 
 -- mengambil seluruh kolom dari tabel penjual
 SELECT * FROM tr_penjualan;

-- prefix dan alias
-- PREFIX, bagian objek database yang hirarkinya lebih tinggi
SELECT ms_produk.nama_produk FROM ms_produk;

-- menggunakan nama database dan tabel sebagai prefix untuk kolom nama_produk
SELECT pti_mrt.ms_produk FROM ms_produk;  

-- ALIAS, nama sementara untuk objek database\
-- mengganti sementara kolom nama_produk dengan ALIAS
SELECT nama_produk AS np FROM ms_produk;
SELECT nama_Produk np FROM ms_produk;

-- mengganti sementara tabel dengan alias
SELECT nama_produk FROM ms_produk AS msp;

-- kombinasikan prefix dan alias
SELECT msp_nama_produk FROM  

                                                                                                                                                      
