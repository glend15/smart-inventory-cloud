# Week 2 – Deployment Infrastruktur Cloud Menggunakan Terraform

## Tujuan

Pada minggu kedua, tim melakukan deployment infrastruktur cloud pada Microsoft Azure menggunakan Terraform.

Tujuan utama:

- Membangun resource cloud secara otomatis
- Menggunakan pendekatan Infrastructure as Code (IaC)
- Menyiapkan environment server untuk aplikasi Smart Inventory

---

## Resource yang Dibuat

Infrastruktur yang berhasil dibuat meliputi:

- Resource Group
- Virtual Machine (VM)
- Public IP Address
- Virtual Network (VNet)
- Subnet
- Network Security Group (NSG)
- Network Interface (NIC)
- Managed Disk

Semua resource dikelola menggunakan Terraform.

---

## Konfigurasi yang Digunakan

### Resource Group

rg-inventory-my

### Region

Malaysia West

### Virtual Machine Size

Standard_DS1_v2

### Public IP SKU

Standard

### Security Rules

- Port 22 → SSH
- Port 80 → HTTP

### Subnet

- public-subnet → 10.0.1.0/24
- private-subnet → 10.0.2.0/24

---

## Kendala yang Ditemukan

Selama proses deployment, ditemukan beberapa kendala:

### 1. Region Azure Dibatasi

Beberapa region seperti East Asia dan Indonesia Central dibatasi oleh kebijakan Azure Students sehingga deployment tidak dapat dilakukan secara normal.

### 2. Free Tier VM Tidak Tersedia

VM size free-tier seperti:

Standard_B1s

mengalami error:

SkuNotAvailable

karena capacity restriction pada region yang tersedia.

### 3. Public IP Basic SKU Ditolak

Azure menolak penggunaan:

Basic Public IP

sehingga harus diganti menjadi:

Standard SKU

---

## Solusi yang Dilakukan

Untuk mengatasi kendala tersebut, dilakukan beberapa penyesuaian:

### Region Deployment

Dipindahkan dari:

Indonesia Central

menjadi:

Malaysia West

### VM Size

Diubah dari:

Standard_B1s

menjadi:

Standard_DS1_v2

agar deployment tetap berhasil.

### Public IP

Diubah dari:

Basic SKU

menjadi:

Standard SKU

untuk memenuhi policy Azure.

---

## Hasil Akhir

Deployment berhasil dilakukan dengan Terraform.

Terminal menunjukkan hasil:

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

Semua resource berhasil muncul pada Azure Portal, termasuk:

- inventory-vm-1
- inventory-public-ip
- inventory-vnet
- inventory-nsg
- inventory-nic

serta resource pendukung lainnya.

---

## Bukti Dokumentasi

Dokumentasi hasil deployment disimpan pada folder:

/docs/screenshots/

yang berisi:

- rg-overview.png
- vm-overview.png
- public-ip-overview.png
- nic-overview.png
- vnet-overview.png
- subnet-overview.png
- nsg-inbound-rules.png
- terraform-apply-success.png
- github-develop-commit.png

---

## Kesimpulan

Penggunaan Terraform sangat membantu dalam membangun infrastruktur cloud secara konsisten, cepat, dan terstruktur.

Meskipun terdapat kendala pada region dan VM free-tier Azure Students, deployment tetap berhasil dilakukan dengan penyesuaian konfigurasi yang sesuai.

Tahap ini menjadi fondasi penting untuk deployment backend dan aplikasi pada minggu berikutnya.