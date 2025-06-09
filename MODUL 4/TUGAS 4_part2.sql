USE pti_martt;

-- Query 1 melihat daftar nama produk yang total jumlah produk terjual perkelompok nama prouk adalah di atas nilai 4
SELECT nama_produk
FROM tr_penjualan
GROUP BY nama_produk
HAVING SUM(qty) > 4;

-- Query 2 melihat daftar nama produk yang total jumlah produk terjual perkelompok nama produk samadengan 9
SELECT nama_produk
FROM tr_penjualan
GROUP BY nama_produk
HAVING SUM(qty) = 9;

-- Query 3 melihat daftar kelompok nama produk dan total nilai pejualan (harga di kalikan jumlah dikurangi diskon) an terbesar
SELECT nama_produk, SUM((harga * qty) - diskon_persen) AS total_penjualan
FROM tr_penjualan
GROUP BY nama_produk
ORDER BY total_penjualan DESC;

