-- Membuat Database TokoBuku
CREATE DATABASE Toko_Buku

-- Menggunakan Database Toko Buku 
    USE Toko_Buku

-- Membuat tabel PENERBIT
CREATE TABLE PENERBIT (
    id_penerbit INT PRIMARY KEY,
    nama_penerbit VARCHAR(100),
    alamat VARCHAR(100)
);

-- Membuat tabel SUPPLIER
CREATE TABLE SUPPLIER (
    id_supplier INT PRIMARY KEY,
    nama_supplier VARCHAR(100),
    alamat VARCHAR(100),
    kontak VARCHAR(100),
    jenis_produk VARCHAR(100),
    harga DECIMAL(10, 2),
    kualitas_produk VARCHAR(100),
    keandalan_pengiriman VARCHAR(100)
);

-- Membuat tabel KATEGORI
CREATE TABLE KATEGORI (
    id_kt INT PRIMARY KEY,
    nama_kt VARCHAR(100)
);

-- Membuat tabel PENULIS
CREATE TABLE PENULIS (
    id_penulis INT PRIMARY KEY,
    nama_penulis VARCHAR(100),
    biografi TEXT,
    penghargaan TEXT
);

-- Membuat tabel PELANGGAN
CREATE TABLE PELANGGAN (
    id_pelanggan INT PRIMARY KEY,
    nama VARCHAR(100),
    alamat VARCHAR(100),
    no_telpon VARCHAR(100),
    email VARCHAR(100)
);

-- Membuat tabel BUKU
CREATE TABLE BUKU (
    id_buku INT PRIMARY KEY,
    judul_buku VARCHAR(100),
    tahun_terbit YEAR,
    
    -- Menambahkan id_pelanggan untuk relasi dengan tabel Pelanggan
    FOREIGN KEY (id_penerbit) REFERENCES PENERBIT(id_penerbit),
    FOREIGN KEY (id_kategori) REFERENCES KATEGORI(id_kt),
    FOREIGN KEY (id_penulis) REFERENCES PENULIS(id_penulis),
    FOREIGN KEY (id_pelanggan) REFERENCES PELANGGAN(id_pelanggan)
);

-- Data Dummy untuk tabel PENERBIT
INSERT INTO PENERBIT (id_penerbit, nama_penerbit, alamat) VALUES
(1, 'Penerbit A', 'Jl. A No. 1'),
(2, 'Penerbit B', 'Jl. B No. 2'),
(3, 'Penerbit C', 'Jl. C No. 3'),
(4, 'Penerbit D', 'Jl. D No. 4'),
(5, 'Penerbit E', 'Jl. E No. 5');

-- Data Dummy untuk tabel SUPPLIER (sesuaikan dengan kebutuhan)
INSERT INTO SUPPLIER (id_supplier, nama_supplier, alamat, kontak, jenis_produk, harga, kualitas_produk, keandalan_pengiriman) VALUES
(1, 'Supplier X', 'Kota X', '08123456789', 'Buku', 10000, 'Baik', 'Cepat'),
(2, 'Supplier Y', 'Kota Y', '08987654321', 'Buku', 12000, 'Bagus', 'Lambat'),
(3, 'Supplier Z', 'Kota Z', '08765432198', 'Buku', 8000, 'Cukup', 'Sedang');

-- Data Dummy untuk tabel KATEGORI
INSERT INTO KATEGORI (id_kt, nama_kt) VALUES
(1, 'Fiksi'),
(2, 'Non-fiksi'),
(3, 'Komik'),
(4, 'Sejarah'),
(5, 'Teknologi');

-- Data Dummy untuk tabel PENULIS
INSERT INTO PENULIS (id_penulis, nama_penulis, biografi, penghargaan) VALUES
(1, 'Penulis A', 'Biografi Penulis A', 'Penghargaan X'),
(2, 'Penulis B', 'Biografi Penulis B', 'Penghargaan Y'),
(3, 'Penulis C', 'Biografi Penulis C', 'Penghargaan Z');

-- Data Dummy untuk tabel PELANGGAN
INSERT INTO PELANGGAN (id_pelanggan, nama, alamat, no_telpon, email) VALUES
(1, 'Pelanggan A', 'Alamat A', '08111111111', 'a@email.com'),
(2, 'Pelanggan B', 'Alamat B', '08222222222', 'b@email.com'),
(3, 'Pelanggan C', 'Alamat C', '08333333333', 'c@email.com');

-- Data Dummy untuk tabel BUKU
INSERT INTO BUKU (id_buku, judul_buku, tahun_terbit) VALUES
(1, 'Buku A', 2022, 1, 1, 1, 1),
(2, 'Buku B', 2023, 2, 2, 2, 2),
(3, 'Buku C', 2024, 3, 3, 3, 3);
