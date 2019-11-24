# ws-transaksi

## Deskripsi Web Service
Web service transaksi ini dibangun dengan menggunakan Node.js dan mengimplementasikan protokol REST. Web service ini mengatur kegiatan transaksi tiket film pada aplikasi Engima. Web service ini memiliki database yang terpisah dari aplikasi Engima. Dengan menggunakan web service ini, layanan yang didapat adalah menambah transaksi tiket baru, mengubah status transaksi, dan mengembalikan seluruh data transaksi dari pengguna Engima.

## Basis Data yang Digunakan Web Service
Web service ini menggunakan database MySQL untuk menyimpan daftar transaksi pembelian film. Nama database yang dibuat adalah movie_transaction dan tabel yang dimiliki hanya satu yaitu transactions. Berikut ini adalah detail atribut dari tabel transactions.
 Field           | Type        | Null | Key | Default | Extra          
-----------------|-------------|------|-----|---------|----------------
 transactionID   | int(11)     | NO   | PRI | NULL    | auto_increment 
 virtual_account | varchar(50) | NO   |     | NULL    |                
 movie_id        | int(11)     | NO   |     | NULL    |                
 historyDate     | date        | NO   |     | NULL    |                
 historyTime     | varchar(11) | NO   |     | NULL    |                
 chair           | int(11)     | NO   |     | NULL    |                
 created_at      | datetime    | NO   |     | NULL    |                
 status          | varchar(10) | YES  |     | Pending |                
 user_id         | int(11)     | NO   |     | NULL    |                