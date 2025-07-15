-- nama: lusi 
-- nim: 23241048


use pti_mart;

-- no 1
Select kode_pelanggan, nama_produk, harga as total
from tr_penjualan
order by harga >= 20000 asc;


-- no 3
 SELECT nama_produk, harga
FROM produk;

-- no 2
SELECT nama_pelanggan, no_urut as nilai_transaksi
FROM ms_pelanggan
ORDER BY nilai_transaksi DESC;

