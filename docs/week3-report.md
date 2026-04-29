# Week 3 Report

## Smart Inventory Cloud System

### Progress Implementasi Minggu 3

Pada minggu ke-3, tim berhasil melanjutkan implementasi arsitektur cloud untuk sistem Smart Inventory berbasis Microsoft Azure. Fokus utama pada tahap ini adalah deployment layanan utama, konektivitas antar resource, keamanan sistem, serta validasi fungsional end-to-end.

Implementasi dilakukan menggunakan pendekatan cloud-native dengan memanfaatkan layanan managed service untuk meningkatkan efisiensi, keamanan, dan skalabilitas sistem.

---

## Layanan yang Berhasil Diimplementasikan

### 1. Compute Layer (Azure Virtual Machine)

Tim berhasil melakukan deployment dua Virtual Machine:

- inventory-vm-1 → backend server
- inventory-vm-2 → connectivity testing

Backend API dijalankan pada VM1 menggunakan Node.js dan Express.js dengan endpoint yang dapat diakses melalui port 3000.

Fungsi utama:
- menjalankan backend service
- API endpoint testing
- koneksi ke managed database

---

### 2. Virtual Network (VNet) Connectivity

Koneksi antar VM berhasil divalidasi menggunakan private IP melalui proses ping dari VM1 ke VM2.

Hasil:
- VM1 dan VM2 saling terhubung
- subnet dan NSG berjalan dengan baik
- komunikasi internal antar compute layer berhasil

Hal ini membuktikan bahwa konfigurasi jaringan internal telah berjalan sesuai desain.

---

### 3. Managed Database (Azure Database for MySQL)

Tim berhasil membuat Azure Database for MySQL Flexible Server sebagai database utama aplikasi.

Implementasi meliputi:

- deployment managed database
- firewall configuration
- koneksi dari VM1 ke database
- pembuatan database aplikasi
- pembuatan table inventory
- insert sample data

Database yang dibuat:

```sql
smart_inventory

Table utama:

items

Sample data berhasil dimasukkan dan diuji menggunakan query SQL.

### 4. Object Storage (Azure Blob Storage)

Storage Account berhasil dibuat untuk kebutuhan object storage.

Implementasi:

- Storage Account deployment
- container creation
- file upload testing

Container digunakan sebagai simulasi penyimpanan file inventaris seperti dokumen dan gambar barang.

---

### 5. Secrets Management (Azure Key Vault)

Azure Key Vault berhasil digunakan untuk pengelolaan secret dan credential.

Implementasi:

- Key Vault deployment
- RBAC configuration
- role assignment
- secret creation

Secret yang dibuat:

db-connection-string

Hal ini digunakan sebagai bukti penerapan keamanan dan least privilege access.

---

### 6. Multi Region Exploration (Cosmos DB)

Eksplorasi multi-region dilakukan menggunakan Azure Cosmos DB untuk memahami konsep redundancy dan backup policy.

Implementasi:

- deployment Cosmos DB
- global distribution review
- geo-redundancy exploration
- backup policy validation

Tahap ini memenuhi evaluasi dosen terkait multi-region dan data redundancy.

---

## Functional Testing

Minimal 5 test case berhasil dijalankan untuk memastikan sistem berjalan end-to-end.

### Test Case 1 — VM Connectivity

VM1 berhasil melakukan ping ke VM2 menggunakan private IP.

Status: PASS

---

### Test Case 2 — Backend Endpoint

Endpoint backend dapat diakses melalui browser dan curl.

Status: PASS

---

### Test Case 3 — Database Connection

VM1 berhasil terhubung ke Azure MySQL dan menjalankan query SQL.

Status: PASS

---

### Test Case 4 — Key Vault Secret Validation

Secret berhasil dibuat dan status aktif.

Status: PASS

---

### Test Case 5 — Blob Storage Upload

File berhasil diunggah ke container Blob Storage.

Status: PASS

---

## Repository GitHub

Repository GitHub berhasil diperbarui dengan:

- backend source code
- package.json
- struktur project
- dokumentasi deployment
- README.md
- laporan implementasi minggu 3

Hal ini memenuhi deliverable repository project pada tugas Week 3.

---

## Kendala yang Dihadapi

Beberapa kendala selama implementasi:

- RBAC delay pada Azure Key Vault
- firewall restriction pada Azure MySQL
- konfigurasi port backend
- Node.js dependency issue
- Azure Student limitation pada geo-redundancy

Semua kendala berhasil diselesaikan melalui konfigurasi ulang dan validasi resource.

---

## Roadmap Selanjutnya

Pengembangan berikutnya akan difokuskan pada:

- frontend dashboard implementation
- load balancer / application gateway
- auto scaling policy
- Azure CDN
- monitoring enhancement
- final optimization untuk deployment production

---

## Kesimpulan

Week 3 berhasil menyelesaikan deployment layanan utama sistem Smart Inventory berbasis cloud secara end-to-end.

Sistem telah memiliki:

- compute layer
- managed database
- object storage
- secret management
- virtual networking
- functional testing
- repository deployment

Dengan demikian, fondasi utama sistem cloud telah siap untuk dilanjutkan ke tahap final deployment dan pengembangan fitur lanjutan.