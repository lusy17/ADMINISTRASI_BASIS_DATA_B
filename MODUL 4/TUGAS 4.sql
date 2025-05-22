-- Nama		: Luis
-- NIM		: 23241048
-- Kelas	: PTI 4/B 

-- LATIHAN MANDIRI 4 (TUGAS)
-- (1) tampilkan semua kolom dan transaksi penjualan yang memiliki diskon dan diurutkan berdasarkan harga teringgi 
SELECT * FROM tr_penjualan WHERE diskon_persen > 0 ORDER BY harga DESC;


-- (2) tampil kolom nama produk, kualiatas pebelian, harga, dan transaksi penjualan yang memiliki harga minimal berdasarkan harga tertinggi
SELECT nama_produk, qty, harga, kode_transaksi FROM tr_penjualan 
WHERE harga >= 100000 ORDER BY harga DESC;


-- (3) tampilkan kolom nana produk, kualitas pembelian, harga, dan transaksi penjualan yang memiliki harga minimal seratus ribu rupiah atau nama produk berawlan karakter "t" dan diurutkan berdasarkan diskon tertinggi
SELECT nama_produk, qty, harga, kode_transaksi FROM tr_penjualan 
WHERE harga >= 500000 OR nama_produk LIKE 'T%' ORDER BY diskon_persen DESC;