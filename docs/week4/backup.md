# Backup Strategy

Sistem menggunakan mekanisme backup otomatis pada Azure Database for MySQL.

## Konfigurasi Backup
Backup dikonfigurasi secara otomatis dengan retention period selama 7 hari. Hal ini memungkinkan data disimpan secara berkala dan aman.

## Recovery
Berdasarkan konfigurasi Azure, sistem memiliki earliest restore point yang memungkinkan proses pemulihan data apabila terjadi kegagalan sistem.

## Bukti
Screenshot konfigurasi backup menunjukkan bahwa backup aktif dan dapat digunakan untuk restore data.