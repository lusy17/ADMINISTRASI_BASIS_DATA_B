-- Nama : Luis LY
-- NIM  : 23241048
-- Kelas: B

-- 1. Membuat database
CREATE DATABASE mandalika_mart;

-- 2. Menggunakan database tersebut
USE mandalika_mart;

-- 3. Membuat tabel 'member'
CREATE TABLE member (
    member_id VARCHAR(10) PRIMARY KEY,
    username VARCHAR(20),
    nama VARCHAR(100),
    tanggal_lahir DATETIME,
    angka_favorit INT
);

-- 4. Membuat tabel 'produk'
CREATE TABLE produk (
    id_produk VARCHAR(10) PRIMARY KEY,
    nama_produk VARCHAR(25),
    katagori VARCHAR(15),
    harga INT,
    qty INT
);

-- 5. Membuat tabel 'transaksi'
CREATE TABLE transaksi (
    tgl_jual DATETIME,
    id_produk VARCHAR(10),
    member_id VARCHAR(10),
    nama_produk VARCHAR(25),
    harga INT,
    qty INT,
    FOREIGN KEY (member_id) REFERENCES member(member_id),
    FOREIGN KEY (id_produk) REFERENCES produk(id_produk)
);

-- 6. Mengisi data contoh pada tabel 'member'
INSERT INTO member (member_id, username, nama, tanggal_lahir, angka_favorit)
VALUES 
('M001', 'selki_u', 'Selki Debei Usyami', '2003-10-21', 7);

-- 7. Mengisi data contoh pada tabel 'produk'
INSERT INTO produk (id_produk, nama_produk, katagori, harga, qty)
VALUES 
('P001', 'Sabun Mandi', 'Kebutuhan', 8000, 50),
('P002', 'Indomie Goreng', 'Makanan', 3000, 100);

-- 8. Mengisi data contoh pada tabel 'transaksi'
INSERT INTO transaksi (tgl_jual, id_produk, member_id, nama_produk, harga, qty)
VALUES ('ID-01', 'webmaster', 'Admin', '8000-01-01', 15);

-- mengakses isi data pada tabel member
SELECT * FROM member;




