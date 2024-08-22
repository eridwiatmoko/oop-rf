CREATE TABLE pengguna (
    id INT PRIMARY KEY,
    nama VARCHAR(100)
);

CREATE TABLE pesanan (
    id INT PRIMARY KEY,
    id_pengguna INT,
    tanggal_pemesanan DATETIME,
    FOREIGN KEY (id_pengguna) REFERENCES pengguna(id)
);

INSERT INTO pengguna (id, nama)
VALUES
    (1, 'Andi'),
    (2, 'Budi'),
    (3, 'Cici'),
    (4, 'Dedi'),
    (5, 'Eri');
    
INSERT INTO pesanan (id, id_pengguna, tanggal_pemesanan)
VALUES
    (1, 1, '2023-11-24 13:30:00'),
    (2, 2, '2023-11-25 09:15:00'),
    (3, 3, '2023-11-26 15:45:00'),
    (4, 4, '2023-11-27 10:00:00'),
    (5, 5, '2023-11-28 17:30:00');