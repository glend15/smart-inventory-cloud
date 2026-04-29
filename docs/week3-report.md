## Planned Auto Scaling Policy

Untuk memenuhi kebutuhan skalabilitas sistem serta menghindari biaya berlebih saat tahap ujicoba, auto scaling dirancang menggunakan policy berikut:

- Minimum instance: 1
- Default instance: 1
- Maximum instance: 3

### Scale Out Rule

Jika penggunaan CPU melebihi 70% selama 10 menit, maka sistem akan menambahkan 1 instance baru untuk menjaga performa aplikasi.

### Scale In Rule

Jika penggunaan CPU berada di bawah 30% selama 10 menit, maka sistem akan mengurangi 1 instance untuk mengoptimalkan penggunaan resource dan biaya.

Karena implementasi saat ini masih menggunakan single Virtual Machine (bukan VM Scale Set), maka auto scaling masih berada pada tahap perencanaan dan akan diimplementasikan penuh menggunakan Azure Virtual Machine Scale Set (VMSS) pada tahap production deployment.

---

## Load Balancer Strategy

Saat ini sistem masih menggunakan single backend instance pada Azure Virtual Machine sehingga Azure Load Balancer belum diperlukan secara langsung.

Traffic masih diarahkan langsung ke backend utama melalui Public IP dan Network Security Group (NSG) yang telah dikonfigurasi.

Pada tahap production dengan multiple backend instances, Azure Load Balancer atau Application Gateway akan digunakan untuk:

- mendistribusikan traffic secara merata
- meningkatkan availability sistem
- mengurangi risiko single point of failure
- meningkatkan reliability saat jumlah user meningkat

Strategi ini disiapkan sebagai bagian dari arsitektur scaling jangka panjang.

---

## CDN Strategy

Azure CDN direncanakan untuk mendistribusikan static assets seperti:

- gambar produk
- file inventory
- dokumen pendukung
- dashboard resources

Blob Storage yang telah dibuat akan digunakan sebagai origin utama untuk distribusi content melalui CDN.

Dengan penggunaan CDN, sistem akan memperoleh:

- latency yang lebih rendah
- akses file yang lebih cepat
- performa yang lebih stabil untuk user dari lokasi berbeda
- efisiensi distribusi static content

Karena tahap Week 3 masih berfokus pada deployment layanan inti (compute, database, storage, dan security), implementasi CDN penuh direncanakan pada tahap production optimization berikutnya.