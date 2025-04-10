-- Soal No 1 
-- WHERE-AND
SELECT
    buku.JUDUL_BUKU,
    PENGARANG.PENGARANG,
    penerbit.PENERBIT
FROM
    buku,
    penerbit,
    pengarang
WHERE
    buku.KD_KARANG = pengarang.KD_KARANG
    AND buku.KD_TERBIT = penerbit.KD_TERBIR;

-- INNER JOIN
SELECT
    buku.JUDUL_BUKU,
    PENGARANG.PENGARANG,
    penerbit.PENERBIT
FROM
    buku
    INNER JOIN pengarang ON buku.KD_KARANG = pengarang.KD_KARANG
    INNER JOIN penerbit ON buku.KD_TERBIT = penerbit.KD_TERBIR;

-- LEFT JOIN
SELECT
    buku.JUDUL_BUKU,
    PENGARANG.PENGARANG,
    penerbit.PENERBIT
FROM
    buku
    LEFT JOIN pengarang ON buku.KD_KARANG = pengarang.KD_KARANG
    LEFT JOIN penerbit ON buku.KD_TERBIT = penerbit.KD_TERBIR;

-- RIGHT JOIN
SELECT
    buku.JUDUL_BUKU,
    PENGARANG.PENGARANG,
    penerbit.PENERBIT
FROM
    buku
    RIGHT JOIN pengarang ON buku.KD_KARANG = pengarang.KD_KARANG
    RIGHT JOIN penerbit ON buku.KD_TERBIT = penerbit.KD_TERBIR;

-- Soal No 2
SELECT
    buku.JUDUL_BUKU,
    PENGARANG.PENGARANG
FROM
    buku
    JOIN pengarang ON buku.KD_KARANG = pengarang.KD_KARANG
WHERE
    JUMLAH > 30;

-- Soal No 3
SELECT
    buku.JUDUL_BUKU,
    PENGARANG.PENGARANG
FROM
    buku
    JOIN pengarang ON buku.KD_KARANG = pengarang.KD_KARANG
WHERE
    PENGARANG = 'Adityo PW';

-- Soal No 4
SELECT
    buku.JUMLAH,
    penerbit.PENERBIT
FROM
    buku
    JOIN penerbit ON buku.KD_TERBIT = penerbit.KD_TERBIR
WHERE
    PENERBIT = 'Tyo Publisher';