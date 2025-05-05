CREATE DATABASE toko_buku;
USE toko_buku;

CREATE TABLE Penerbit (
    id_penerbit INT PRIMARY KEY AUTO_INCREMENT,
    nama_penerbit VARCHAR(20),
    alamat VARCHAR(20)
);

CREATE TABLE Penulis (
    id_penulis INT PRIMARY KEY AUTO_INCREMENT,
    nama_penulis VARCHAR(25),
    biografi TEXT,
    penghargaan TEXT
);

CREATE TABLE Supplier (
    id_supplier INT PRIMARY KEY AUTO_INCREMENT,
    nama_supplier VARCHAR(25),
    kontak VARCHAR(20),
    jenis_produk VARCHAR(25),
    harga DECIMAL(10, 2),
    kualitas_produk VARCHAR(25),
    keandalan_pengiriman VARCHAR(25)
);

CREATE TABLE Kategori (
    id_kategori INT PRIMARY KEY AUTO_INCREMENT,
    nama_kategori VARCHAR(25)
);

CREATE TABLE Buku (
    id_buku INT PRIMARY KEY AUTO_INCREMENT,
    judul_buku VARCHAR(25),
    tahun_terbit YEAR,
    id_penerbit INT,
    id_penulis INT,
    id_kategori INT,
    jumlah_buku INT,
    FOREIGN KEY (id_penerbit) REFERENCES Penerbit(id_penerbit),
    FOREIGN KEY (id_penulis) REFERENCES Penulis(id_penulis),
    FOREIGN KEY (id_kategori) REFERENCES Kategori(id_kategori)
);

CREATE TABLE Pelanggan (
    id_pelanggan INT PRIMARY KEY AUTO_INCREMENT,
    nama VARCHAR(25),
    alamat VARCHAR(25),
    no_telepon VARCHAR(20),
    email VARCHAR(25)
);

CREATE TABLE Transaksi (
    id_transaksi INT PRIMARY KEY AUTO_INCREMENT,
    id_buku INT,
    id_pelanggan INT,
    tanggal_transaksi DATE,
    jumlah_beli INT,
    total_harga DECIMAL(10,2),
    FOREIGN KEY (id_buku) REFERENCES Buku(id_buku),
    FOREIGN KEY (id_pelanggan) REFERENCES Pelanggan(id_pelanggan)
);

-- Data Dummy
INSERT INTO Penerbit (nama_penerbit, alamat) VALUES
('Gramedia Pustaka Utama', 'Jakarta'),
('Erlangga', 'Bandung'),
('Bentang Pustaka', 'Yogyakarta');

INSERT INTO Penulis (nama_penulis, biografi, penghargaan) VALUES
('Andrea Hirata', 'Penulis novel Laskar Pelangi', 'Sastra'),
('Tere Liye', 'Penulis novel fenomenal', 'Sastra'),
('Ahmad Fuadi', 'Penulis novel Negeri 5 Menara', 'Sastra');

INSERT INTO Supplier (nama_supplier, kontak, jenis_produk, harga, kualitas_produk, keandalan_pengiriman) VALUES
('Toko Buku Abadi', '08123456789', 'Buku', 10000, 'Baik', 'Cepat'),
('Toko Buku Setia', '08123456790', 'Buku', 12000, 'Baik', 'Cepat');

INSERT INTO Kategori (nama_kategori) VALUES
('Fiksi'),
('Non-Fiksi'),
('Sejarah');

INSERT INTO Buku (judul_buku, tahun_terbit, id_penerbit, id_penulis, id_kategori, jumlah_buku) VALUES
('Laskar Pelangi', 2005, 1, 1, 1, 100),
('Negeri 5 Menara', 2010, 2, 3, 1, 150),
('Ayah', 2011, 3, 2, 2, 200);

INSERT INTO Pelanggan (nama, alamat, no_telepon, email) VALUES
('Budi Santoso', 'Jl. Mawar No.1', '081122334455', 'budi@email.com'),
('Siti Nurhaliza', 'Jl. Melati No.2', '081122334466', 'siti@email.com');

INSERT INTO Transaksi (id_buku, id_pelanggan, tanggal_transaksi, jumlah_beli, total_harga) VALUES
(1, 1, '2024-04-29', 2, 20000),
(2, 2, '2024-04-30', 1, 15000);

-- 1. Mengambil semua informasi dari tabel Penerbit
SELECT * FROM Penerbit;

-- 2. Mengambil nama penerbit dan alamat dari tabel Penerbit
SELECT nama_penerbit, alamat FROM Penerbit;

-- 3. Mengambil semua informasi dari tabel Buku, dan menampilkan id_buku sebagai 'ID Buku'
SELECT *, id_buku AS 'ID Buku' FROM Buku;

-- 4. Mengambil judul buku dan tahun terbit dari tabel Buku, diurutkan berdasarkan tahun terbit secara descending
SELECT judul_buku, tahun_terbit FROM Buku ORDER BY tahun_terbit DESC;

-- 5. Mengambil 5 buku pertama dari tabel Buku
SELECT * FROM Buku LIMIT 5;


-- 6. Menampilkan jumlah buku yang tersedia di setiap kategori
SELECT k.nama_kategori, SUM(b.jumlah_buku) AS total_buku
FROM Kategori k
JOIN Buku b ON k.id_kategori = b.id_kategori
GROUP BY k.nama_kategori;


-- 7. Menampilkan nama penulis dan judul buku yang ditulisnya
SELECT p.nama_penulis, b.judul_buku
FROM Penulis p
JOIN Buku b ON p.id_penulis = b.id_penulis;

-- 8. Menampilkan nama pelanggan dan detail transaksi yang dilakukannya
SELECT p.nama AS nama_pelanggan, t.tanggal_transaksi, t.jumlah_beli, t.total_harga
FROM Pelanggan p
JOIN Transaksi t ON p.id_pelanggan = t.id_pelanggan;


-- 9. Menampilkan judul buku, nama penulis, dan nama kategori
SELECT b.judul_buku, p.nama_penulis, k.nama_kategori
FROM Buku b
JOIN Penulis p ON b.id_penulis = p.id_penulis
JOIN Kategori k ON b.id_kategori = k.id_kategori;


-- 10. Menampilkan buku-buku yang diterbitkan oleh 'Gramedia Pustaka Utama'
SELECT b.judul_buku
FROM Buku b
JOIN Penerbit p ON b.id_penerbit = p.id_penerbit
WHERE p.nama_penerbit = 'Gramedia Pustaka Utama';

-- 11. Menampilkan jumlah total transaksi yang dilakukan
SELECT COUNT(*) AS total_transaksi FROM Transaksi;

-- 12. Menampilkan rata-rata harga buku dari semua buku
SELECT AVG(jumlah_buku) AS rata_rata_buku FROM Buku;
