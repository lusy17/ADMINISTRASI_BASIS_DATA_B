-- membuat tabel dalam database 'tokobuku'

CREATE DATABASE tokobuku;

USE tokobuku;

DESCRIBE buku;

CREATE TABLE buku (
   id_buku varchar(40),
   judul_buku varchar(40),
   tahun_terbit datetime);
   
   ALTER TABLE buku
   MODIFY judul_buku varchar(25) after id_buku;
   
-- membuat tabel dalam database 'Tokobuku'
   CREATE TABLE penerbit (
	alamat varchar(13),
	id_penerbit varchar(25),
	namapenerbit varchar(25));

-- membuat tabel dalam database 'tokobuku'
CREATE TABLE pelanggan(
   id_pelanggan varchar(10),
   email varchar(20),
   nama varchar(100),
   nomortelepon datetime,
   alamat  int);
   
    -- membuat tabel dalam database 'tokobuku'
CREATE TABLE penulis (
   id_penulis varchar(10),
   namapenulis  varchar(20),
   penghargaan varchar(100),
   biografi datetime);
   
    -- membuat tabel dalam database 'Supplier'
CREATE TABLE Supplier (
id_supplier varchar(10),
nama_supplier varchar(25),
alamat varchar(20),
kualitasproduk varchar(100),
kotak datetime,
jenisproduk int,
harga int,
QTY int,
keandalanpengiriman varchar(100));

CREATE TABLE Transaksi(
ID_transaksi varchar(10),
nama varchar(100),
judul_buku varchar(40),
nama_supplier varchar(25),
QTY int,
total int);


    
    -- membuat tabel dalam database 'tokobuku'
CREATE TABLE kategori (
   id_kt varchar(10),
   namakt  varchar(20));
   
   
   ALTER TABLE buku
   ADD PRIMARY KEY (id_buku);
 ALTER TABLE penerbit
   ADD PRIMARY KEY (id_penerbit);
    ALTER TABLE pelanggan
   ADD PRIMARY KEY (id_pelanggan);
    ALTER TABLE penulis
   ADD PRIMARY KEY (id_penulis);
    ALTER TABLE Supplier
   ADD PRIMARY KEY (id_supplier);
   ALTER TABLE kategori
   ADD PRIMARY KEY (id_kt);
   
ALTER TABLE transaksi
ADD CONSTRAINT FK_TransaksiPelanggan
FOREIGN KEY (id_transaksi) REFERENCES pelanggan(id_pelanggan);
   
   ALTER TABLE transaksi
ADD CONSTRAINT FK_TransaksiSupplier
FOREIGN KEY (id_transaksi) REFERENCES supplier(id_supplier);


   
-- membuat data table
INSERT INTO buku(id_buku,judul_buku,tahun_terbit)
VALUES	('001','Si Kancil','1998-03-02'),
		('002','Ular Berbisa','1999-05-05'),
        ('003','Si Monyet','1988-07-09'),
        ('004','Mangsa Enak','1976-02-05'),
        ('005','Si Tomang','1965-05-01');
SELECT *FROM buku;

INSERT INTO penerbit(alamat,id_penerbit,namapenerbit)
VALUES	('Bima50rora_ntb','12345','Pustakautama'),
		('Rinca60sape_ntb','12245','Bentang Pustaka'),
        ('Kukusanwera90_ntb','67890','Nasmedia'),
        ('Kerorasangia70_ntb','24456','Bukunesia'),
        ('Warlokamonggo80_ntb','24456','Grasindo');
SELECT *FROM penerbit;

INSERT INTO pelanggan(id_pelanggan,email,nama,nomortelepon,alamat)
VALUES	('000234','sena@gmail.com','Senaya','098776544','Rinca'),
		('000236','nana4@gmail.com','Nana Mirdad','098877644','Kerora'),
        ('000237','titi2@gmail.com','Titi Kamal','099886656','Warloka'),
        ('000238','maya@gmail.com','Maya Sari','098877654','Bima'),
        ('000239','Sasa@gmail.com','Salsabilla','099876443','Rora');
SELECT *FROM pelanggan;

INSERT INTO penulis(id_penulis,namapenulis,penghargaan,biografi)
VALUES	('000246','Si Kancil','1998-03-02','tidak ada','tidak ada'),
		('00998','Ular Berbisa','1999-05-05','tidak ada','tidak ada'),
        ('67789','Si Monyet','1988-07-09','ada','ada'),
        ('00334','Mangsa Enak','1976-02-05','tidak ada','tidak ada'),
        ('005334','Si Tomang','1965-05-01','ada','ada');
SELECT *FROM penulis;

INSERT INTO Supplier(id_supplier,nama_supplier,alamat,kualitasproduk,kotak,jenisproduk,harga,QTY,keandalanpengirim)
VALUES	('0013434','prima jaya','bima','bagus','100','buku','10000','10','baik'),
		('0025566','suriakencana','bima','sangat bagus','200','buku','200000','20','baik'),
        ('003233','duniamas','bima','bagus','150','buku','15000','30','baik'),
        ('0046776','surabayaindah','ntt','bagus','50','buku','12000','40','baik'),
        ('005556','tiaramas','ntb','bagus','60','buku','8000','20','baik');
SELECT *FROM Supplier;

INSERT INTO Transaksi(id_transaksi,nama,judul_buku,nama_supplier,QTY,total)
VALUES	('0014545','yaya','Si Kancil','100','tomo','100','100000'),
		('0026712','yayu''Ular Berbisa','500','yusuke','150','200000'),
        ('0033342','yuyu','Si Monyet','300','otsuka','100','100000'),
        ('0041234','yiyi','Mangsa Enak','309','jerome','200','200000'),
        ('0053456','yeye','Si Tomang','200','wasedaboy','250','250000');
SELECT *FROM Transaksi;
 
INSERT INTO kategori(id_kt,namakt)
VALUES	('0016777','Si Kancil'),
		('0021267','Ular Berbisa'),
        ('0034567','Si Monyet'),
        ('0044765','Mangsa Enak'),
        ('0054567','Si Tomang');
SELECT *FROM kategori;