# Smart Inventory Cloud System

## Deskripsi
Smart Inventory Cloud System adalah aplikasi berbasis cloud yang digunakan untuk mengelola stok barang secara digital serta menyediakan dashboard monitoring yang interaktif. Sistem ini memungkinkan pengguna untuk mencatat barang masuk dan keluar, mengelola data barang, serta melakukan analisis sederhana terhadap kondisi stok.

Aplikasi ini dibangun menggunakan layanan Microsoft Azure untuk memastikan sistem dapat berjalan secara scalable, aman, dan efisien.

---

## Tujuan
- Mempermudah pengelolaan stok barang  
- Mengurangi kesalahan pencatatan manual  
- Menyediakan visualisasi data melalui dashboard  
- Mengimplementasikan arsitektur cloud computing berbasis Azure  

---

## Fitur Utama
- Login user (admin)  
- Manajemen data barang (CRUD)  
- Transaksi barang masuk dan keluar  
- Dashboard monitoring:
  - Total stok barang  
  - Grafik barang masuk & keluar  
  - Notifikasi stok rendah  

---

## Arsitektur Sistem
Sistem menggunakan arsitektur berbasis cloud pada Microsoft Azure dengan alur sebagai berikut:

![Arsitektur Sistem](docs/architecture.png)

Penjelasan:
- User mengakses aplikasi melalui browser  
- Azure CDN mempercepat distribusi konten ke pengguna  
- Application Gateway mendistribusikan request ke backend  
- Virtual Machine menjalankan aplikasi backend  
- Azure Database for MySQL menyimpan data utama sistem  
- Azure Blob Storage digunakan untuk penyimpanan file (gambar, dll)  
- Azure Monitor digunakan untuk monitoring sistem  
- Azure Active Directory mengatur autentikasi dan akses  

---

## Teknologi yang Digunakan
- Azure Virtual Machine (Compute)  
- Azure Database for MySQL (Database)  
- Azure Blob Storage (Storage)  
- Azure CDN (Content Delivery Network)  
- Azure Application Gateway (Load Balancer)  
- Azure Monitor (Monitoring)  
- Azure Active Directory (Security & IAM)  

---

## Struktur Project

smart-inventory-cloud/
├── backend/                # Backend API (Node.js / Express)
├── frontend/               # Frontend (UI)
├── docs/                   # Dokumentasi & diagram
├── infra/terraform/        # Infrastructure as Code (Azure)
├── README.md
└── .gitignore

---

## Cara Menjalankan (Local Development)

### Backend
cd backend
npm install
node app.js


### Frontend
Buka file:
frontend/index.html

atau jalankan menggunakan server lokal.

---

## Deployment (Cloud)

Aplikasi di-deploy menggunakan:
- Azure Virtual Machine sebagai server backend  
- Terraform untuk provisioning infrastruktur  
- GitHub sebagai version control  

---

## Catatan
Proyek ini dikembangkan sebagai bagian dari pembelajaran Cloud Computing dengan pendekatan Infrastructure as Code (IaC) menggunakan Terraform dan deployment pada platform Microsoft Azure.

---

## Tim Pengembang
- Glend Stevans — Cloud Architect / Project Lead  
- Jonathan Pratama — DevOps Engineer  
- Rivan Aprilian — Backend Developer  
- Jeremy Timothy Souk — Security & Frontend  