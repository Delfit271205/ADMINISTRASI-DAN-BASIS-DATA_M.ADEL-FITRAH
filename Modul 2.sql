-- NAMA : M.ADEL FITRAH
-- NIM  : NIM 24241153
-- KELAS : E 
-- MODUL : 2


-- select statment
-- perintah yang di gunakan untukmmengambil database

-- praktek 1
-- mengambil satu kolom dari table

-- objek database 
-- 1. database (tertinggi)
-- 2. table 
-- 3. kolom 
-- 4. nilai (value/data)

-- menggunakan database 
USE kelas_e_mart;

-- ambil kolom nama produk dari tabel produk
SELECT nama_produk FROM produk;

-- praktek 2
-- mengambil dua kolom dari sebuah table
-- ambil nama produk dan harga dari table produk
SELECT nama_produk, harga FROM produk;

-- praktek 3
-- mengambil seluruh kolom dari sebuah table 
-- ambil semua kolom dari tabel produk
SELECT * FROM produk;

-- latihan mandiri
SELECT kode_produk, nama_produk, nama_produk FROM produk;
SELECT * FROM pelanggan;

-- PREFIX DAN ALIAS 
-- prefix adalah objek database yang hirarkiya lebih tinggi
-- contoh 'database.tabel.kolom'
SELECT kelas_e_mart.pelanggan.nama_pelanggan
FROM pellnggan;
select nama_pelnggan FROM pelanggan;

-- alias 
SELECT nama_produk as np FROM produk;
-- tanpa as
SELECT nama_produk np FROM produk;

-- penggunaan alias alias pada nama table
SELECT nama_produk FROM produk as msp;
SELECT msp.nama_produk FROM produk as msp;
-- case 1
SELECT nama_pelanggan, alamat FROM pelanggan;
 -- case 2
 SELECT  nama_produk, harga FROM produk;