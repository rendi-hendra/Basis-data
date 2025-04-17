-- Soal no 1
SELECT * FROM (SELECT nama_pelanggan ,total_item FROM pembelian join pelanggan on pembelian.kd_pelanggan = pelanggan.kd_pelanggan) x GROUP BY total_item DESC LIMIT 1;

-- Soal no 2
SELECT p1.nama_pelanggan, p1.alamat_pelanggan
FROM pelanggan p1
JOIN (
    SELECT alamat_pelanggan
    FROM pelanggan
    GROUP BY alamat_pelanggan
    HAVING COUNT(*) > 1
) p2 ON p1.alamat_pelanggan = p2.alamat_pelanggan;

-- Soal no 3
SELECT * FROM (SELECT judul_buku, jml_beli FROM detailpembelian dp JOIN buku ON buku.kd_buku = dp.kd_buku) x GROUP BY jml_beli DESC limit 1;

-- Soal no 4
SELECT judul_buku FROM buku WHERE jml_buku > ( SELECT AVG(jml_buku) FROM buku );
