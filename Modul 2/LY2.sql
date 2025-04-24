-- Nama : Luisy
-- NIM : 23241048
-- Kelas : B
-- Modul : 2 (SELECT)

-- Membuat database
CREATE DATABASE pti_mart;

-- Menggunakan database
USE pti_mart;

-- Cek kolom dalam setiap tabel
DESCRIBE ms_pelanggan;
DESCRIBE ms_produk;
DESCRIBE tr_penjualan;

-- SELECT 
-- Menggunakan SELECT untuk 1 Table
-- Mengambil kolom nama produk dari table produk
SELECT nama_produk FROM ms_produk;

-- Mengambil lebih dari satu kolom dari sebuah table
SELECT nama_produk, harga FROM ms_produk;

-- Mengambil semua kolom dari sebuah table 
SELECT * FROM ms_produk;

-- LATIHAN
-- Mengambil kode produk dan nama produk dari table produk
SELECT kode_produk, nama_produk FROM ms_produk;

-- Mengambil seluruh kolom dari table penjualan
SELECT * FROM ms_pelanggan;

-- PREFIX dan ALIAS
-- PREFIX, bagian objek database yang hirarkinya lebih tinggi
-- Menggunakan PREFIX nama table untuk kolom nama_produk dari table produk
SELECT ms_produk.nama_produk FROM ms_produk;

-- Menggunakan nama database dan table sebagai prefix untuk kolom nama_produk
SELECT pti_mart.ms_produk.nama_produk FROM ms_produk;


-- ALTAS, nama sementara untuk objek database
-- Mengambil sementara kolom nama_produk dengan ALIAS
SELECT nama_produk AS np FROM ms_produk;
SELECT nama_produk np FROM ms_produk;

-- Mengganti sementara table dengan ALTAS
SELECT nama_produk FROM  ms_produk AS msp;

-- Kombinasikan PREFIX dan ALIAS


-- CASE 1
SELECT nama_pelanggan,alamat FROM ms_pelanggan;

-- CASE 2
SELECT nama_produk,harga FROM ms_produk;
