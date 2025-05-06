-- Modul    : 3 Nilai Literal, Operator, Fungsi, Date, dan Klausal WHERE
-- Nama     : LUSI YANTI
-- NIM      : 23241048
-- Kelas    : 4B

-- menggunakan database

USE pti_martt;
## 1. nilai literal pada SQL
SELECT 'Belajar SQL' AS judul, 2025 AS tahun;

-- ### Praktek 1
SELECT 77;
SELECT 77 as angka;

-- ### Praktek 2
SELECT 77 AS angka, true AS nilai_logika, 'PTI' AS teks;


## 2. Nilai Literal Khusus, NULL
-- ### Praktek 3
SELECT NULL AS kosong;

## 3. Operator Matematika
-- ### Praktek 4
SELECT 5%2 AS sisa_bagi, 5/2 AS hasil_bagi_1, 5 DIV 2 AS hasil_bagi_2;



-- ### Praktek 5
SELECT qty*harga AS total_beli FROM tr_penjualan_dqlab;


## 4. Operator Perbandingan
-- ### Praktek 6
SELECT 5=5, 5<>5, 5<>4, 5!=5,5!=4, 5>4;

-- ### Latihan Mandiri 2
SELECT 
    1 = true AS "1 = true",
    1 = false AS "1 = false",
    5 >= 5 AS "5 >= 5",
    5.2 = 5.20000 AS "5.2 = 5.20000",
    NULL = 1 AS "NULL = 1",
    NULL = NULL AS "NULL = NULL";
    
-- ### Praktek 7
SELECT nama_produk, qty > 3 FROM tr_penjualan_dqab;


## 5. Fungsi dan DATE

SELECT
POW(3,2),
ROUND(3.14),
ROUND(3.54), 
ROUND(3.155, 1), 
ROUND(3.155, 2), 
FLOOR(4.28),
FLOOR(4.75), 
CEILING(4.39), 
CEILING(4.99); 

### Fungsi `NOW()`
SELECT
NOW(),
YEAR('2025-05-05'),
MONTH('2025-05-05'),
DAY('2025-05-05'), 
DATEDIFF('2022-05-03', '2022-07-22'), 
DATEDIFF('2022-07-22','2022-05-03'); 

### Praktek 8
SELECT POW(3,2), ROUND(3.14), ROUND(3.54), ROUND(3.155, 1), ROUND(3.155, 2), FLOOR(4.28), FLOOR(4.78), CEILING(4.39), CEILING(4.55);

### Praktek 9
SELECT NOW(), YEAR('2022-05-03'), DATEDIFF('2022-07-22', '2022-05-03'), DAY('2022-05-03');

## latihan mandiri 3
SELECT 
    DATEDIFF(CURDATE(), '2022-07-23') AS selisih_hari,
    YEAR('2022-07-23') AS tahun,
    MONTH('2022-07-23') AS bulan,
    DAY('2022-07-23') AS hari,
    YEAR(CURDATE()) AS tahun_sekarang;
### Praktek 10
SELECT DATEDIFF(NOW(), tgl_transaksi) AS jarak_transaksi FROM tr_penjualan_dqlab;


## 6. Filtering dengan Klausul `WHERE`
### Praktek 11
SELECT nama_produk, qty FROM tr_penjualan_dqlab WHERE qty>3;

### Praktek 12
SELECT nama_produk, qty, tgl_transaksi FROM tr_penjualan_dqlab WHERE qty>3 AND month(tgl_transaksi)=6;

### Praktek 13
SELECT nama_produk, qty, tgl_transaksi FROM tr_penjualan_dqlab WHERE nama_produk = 'Flaskdisk 32 GB';

## 7. Operator Perbandingan `LIKE`
### Praktek 14
SELECT nama_produk FROM tr_penjualan_dqlab WHERE nama_produk LIKE 'f%';

### Latihan Mandiri 4
SELECT * FROM tr_penjualan_dqlab WHERE nama_produk LIKE '_a%';
SELECT * FROM ms_produk_dqlab WHERE kategori_produk LIKE '%t%';
SELECT * FROM ms_produk_dqlab WHERE kategori_produk LIKE '%un%';

## 8. Operator Logika
### Praktek 15
SELECT nama_produk FROM tr_penjualan_dqlab WHERE nama_produk LIKE 'f%' AND qty > 2;