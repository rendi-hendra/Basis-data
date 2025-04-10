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