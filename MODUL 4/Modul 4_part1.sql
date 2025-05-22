-- Nama		: Luis
-- NIM		: 23241048
-- Kelas	: PTI 4/B 
-- Modul	: ORDER BY, Fungsi Agresasi, GRUP BY, HAVING

-- menggunakan database
USE pti_martt;

SELECT * FROM tr_penjualan;

-- ORDER BUY 
-- Ambil nama produk dan qty dari tabel penjualan urutkan qty
SELECT nama_produk, qty FROM tr_penjualan ORDER BY qty;

-- mengambil nama produk dan qty dari tabel penjualan urutan qty dan nama produk
SELECT nama_produk, qty FROM tr_penjualan ORDER BY qty, nama_produk;

-- LATIHAN MANDIRI 1
-- Tampilkan semua kolom dari tabel tr_penjuatr dengan mengurutkan berdasarkan qty dan tgl_transaksi
SELECT *  FROM tr_penjualan ORDER BY qty, tgl_transaksi;

-- Tampilkan semua kolom dari tabel ms_penjualan dengan mengurutkan berdasarkan nama_pelanggan 
SELECT * FROM ms_pelanggan ORDER BY nama_pelanggan;

-- Tampilkan semua kolom dari ms_pelanggan dengan mengurutkan berdasarkan alamat
SELECT * FROM ms_pelanggan ORDER BY alamat;

-- praktek 3
-- ORDER BY ASC dan BESC
-- ambil nama_produk, qty dari tabel penjualan urutkan qty besar ke kecil
SELECT nama_produk, qty FROM tr_penjualan ORDER BY qty DESC;

-- Ambil nama produk, qty dari tabel penjualan urutkan qty dan nama produk besar ke kecil
SELECT nama_produk, qty FROM tr_penjualan ORDER BY qty DESC, nama_produk DESC;

-- LATIHAN MANDIRI 2
-- tampilkan semua kolom dari tabel tr_penjuatr dengan mengurutkan berdasarkan tgl_transaksi secara descending dan qty secara descending
SELECT * FROM tr_penjualan ORDER BY tgl_transaksi DESC, qty DESC;

-- Tampilkan semua kolom dari tabel ms_pelanggan dengan mengurutkan berdasarkan nama_pelanggan secara descending
SELECT * FROM ms_pelanggan ORDER BY nama_pelanggan DESC;

-- Tampilkan semua kolom dari tabel ms_pelanggan dengan menngurutkan berdasarkan alamat secara descending
SELECT * FROM ms_pelanggan ORDER BY alamat DESC;

-- PRAKTEK 5 
-- Menggunakan perhitungan
-- ORDER BY dari hasil perhitungan 
-- ambil nama produk, qty, harga, harga*qty dari tabel penjualan urutkan harga*qty besar-kecil
SELECT nama_produk, harga, qty, harga*qty AS total
FROM tr_penjualan
ORDER BY qty DESC, total DESC;

-- LATIHAN MANDIRI 3
-- Coba pengurutan dengan ekspresi total harga menggunakan rumusan jumlah barang dikali harga barang di kurang diskon
SELECT * FROM tr_penjualan;

-- 
SELECT nama_produk, harga, qty, diskon_persen, qty*harga AS total_harga, 
((qty*harga) - ((diskon_persen/100)*harga)) AS total_bayar
FROM tr_penjualan
WHERE diskon_persen > 0
ORDER BY diskon_persen DESC, total_bayar DESC;

-- praktek 6 
-- ORDER BY menggunakan WHERE 
-- Ambil nama_produk dan qty dari tabel penjualan yang berawalan huruf F urut berdasarkan qty
SELECT nama_produk, qty FROM tr_penjualan WHERE nama_produk LIKE 'F%' ORDER BY qty DESC;

-- LATIHAN MANDIRI 4 (TUGAS)
-- (1) tampilkan semua kolom dan transaksi penjualan yang memiliki diskon dan diurutkan berdasarkan harga teringgi 
SELECT * FROM tr_penjualan WHERE diskon_persen > 0 ORDER BY harga DESC;


-- (2) tampil kolom nama produk, kualiatas pebelian, harga, dan transaksi penjualan yang memiliki harga minimal berdasarkan harga tertinggi
SELECT nama_produk, qty, harga, kode_transaksi FROM tr_penjualan 
WHERE harga >= 100000 ORDER BY harga DESC;


-- (3) tampilkan kolom nana produk, kualitas pembelian, harga, dan transaksi penjualan yang memiliki harga minimal seratus ribu rupiah atau nama produk berawlan karakter "t" dan diurutkan berdasarkan diskon tertinggi
SELECT nama_produk, qty, harga, kode_transaksi FROM tr_penjualan 
WHERE harga >= 500000 OR nama_produk LIKE 'T%' ORDER BY diskon_persen DESC;