INSERT INTO `buku` (KD_BUKU, JUDUL_BUKU, KD_PENGARANG, KD_TERBIT, JUMLAH) VALUES (27, 'Informatika Sosial', 12, 3, 35);

SELECT JUDUL_BUKU FROM `buku` WHERE JUMLAH > 30;

SELECT JUMLAH FROM `buku` WHERE KD_TERBIT = 3;

SELECT JUDUL_BUKU FROM `buku` ORDER BY JUMLAH DESC LIMIT 1;