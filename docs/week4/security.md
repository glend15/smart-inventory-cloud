## Temuan 1: Firewall Tidak Aktif pada Key Vault

Berdasarkan hasil analisis dari Microsoft Defender for Cloud, ditemukan bahwa firewall belum diaktifkan pada layanan Key Vault.

### Risiko
Tanpa firewall, Key Vault dapat diakses secara publik dan meningkatkan risiko akses tidak sah terhadap data sensitif seperti secret dan credential.

### Mitigasi
Mengaktifkan firewall pada Key Vault dan membatasi akses hanya dari IP atau jaringan tertentu.
## Temuan 2: Microsoft Defender for SQL Belum Diaktifkan

Ditemukan bahwa Microsoft Defender for SQL belum diaktifkan pada layanan Azure Database for MySQL.

### Risiko
Tanpa proteksi ini, database rentan terhadap serangan seperti SQL injection, aktivitas mencurigakan, dan potensi kebocoran data.

### Mitigasi
Mengaktifkan Microsoft Defender for SQL untuk memberikan perlindungan tambahan seperti deteksi ancaman dan monitoring aktivitas database.