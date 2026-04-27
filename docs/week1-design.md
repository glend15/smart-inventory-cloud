# Week 1 – Perancangan dan Persiapan Infrastruktur Cloud

## Tujuan

Pada minggu pertama, tim melakukan tahap perencanaan awal untuk pembangunan sistem Smart Inventory berbasis cloud. Fokus utama pada tahap ini adalah menentukan arsitektur sistem, pembagian tugas anggota, pemilihan layanan cloud yang akan digunakan, serta persiapan repository project dan environment kerja.

---

## Aktivitas yang Dilakukan

### 1. Menentukan Arsitektur Sistem

Tim merancang struktur awal sistem yang terdiri dari:

- Frontend untuk antarmuka pengguna
- Backend berbasis Node.js untuk API dan logika sistem
- Database untuk penyimpanan data inventory
- Infrastruktur cloud pada Microsoft Azure
- Deployment menggunakan Terraform sebagai Infrastructure as Code (IaC)

Arsitektur ini dipilih agar sistem dapat dikembangkan secara terstruktur, scalable, dan mudah dikelola.

---

### 2. Membuat Repository GitHub

Repository project dibuat sebagai pusat kolaborasi seluruh anggota tim.

Repository digunakan untuk:

- Menyimpan source code
- Version control
- Kolaborasi antar anggota
- Dokumentasi progress mingguan
- Deployment configuration Terraform

Branch yang digunakan:

- `main` → branch utama
- `develop` → branch pengembangan

---

### 3. Pembagian Tugas Anggota

### Glenn

- Dokumentasi proyek
- README dan laporan progress
- Final checking project

### Jonathan

- Network configuration
- Virtual Network
- Subnet
- Compute configuration

### Jeremy

- Security configuration
- Network Security Group
- IAM dan access control

### Rivan

- Azure deployment
- Terraform execution
- Testing hasil deployment

---

### 4. Persiapan Tools

Seluruh anggota melakukan instalasi:

- Git
- Visual Studio Code
- Terraform
- Azure CLI
- GitHub access
- Azure for Students subscription

Persiapan ini penting agar seluruh anggota dapat bekerja pada environment yang sama.

---

## Hasil Minggu 1

Pada akhir minggu pertama, tim berhasil:

- Menentukan arsitektur sistem
- Menyiapkan repository GitHub
- Membagi tugas anggota
- Menyiapkan environment kerja
- Menentukan penggunaan Azure + Terraform

Tahap ini menjadi dasar untuk deployment infrastruktur pada minggu kedua.