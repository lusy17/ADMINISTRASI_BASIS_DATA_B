-- Nama : luisy
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

-- 1. Mengambil semua data pelanggan
SELECT * FROM ms_pelanggan;

-- 2. Mengambil nama dan harga produk
SELECT nama_produk, harga FROM ms_produk;

-- 3. Mengambil data penjualan untuk produk tertentu
SELECT * FROM tr_penjualan WHERE kode_produk = 'P001';

-- 4. Mengambil produk dengan harga di atas nilai tertentu
SELECT nama_produk, harga FROM ms_produk WHERE harga > 100000;

-- 5. Mengambil pelanggan yang tinggal di kota tertentu
SELECT nama_pelanggan, alamat FROM ms_pelanggan WHERE alamat LIKE '%Jakarta%';

-- 6. Mengambil total penjualan per produk
SELECT kode_produk, SUM(3) AS total_terjual FROM tr_penjualan GROUP BY kode_produk;

-- 7. Mengambil produk yang belum terjual
SELECT nama_produk FROM ms_produk WHERE kode_produk NOT IN (SELECT kode_produk FROM tr_penjualan);

-- 8. Mengambil data pelanggan yang tinggal di provinsi tertentu
SELECT nama_pelanggan, alamat FROM ms_pelanggan WHERE alamat LIKE '%Jawa Barat%';


-- 9. Mengambil produk dengan diskon tertentu
SELECT nama_produk, harga, harga * 0.9 AS harga_diskon FROM ms_produk WHERE harga * 0.9 < 100000;

-- 10. Mengambil informasi penjualan dengan detail produk
SELECT tr_penjualan.kode_penjualan, ms_produk.nama_produk, tr_penjualan.jumlah 
FROM tr_penjualan 
JOIN ms_produk ON tr_penjualan.kode_produk = ms_produk.kode_produk;
