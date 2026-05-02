# Cost Analysis

Analisis biaya dilakukan menggunakan layanan Azure Cost Management untuk memantau penggunaan resource selama periode pengujian sistem.

## Total Biaya
Berdasarkan hasil pemantauan pada periode 26 April 2026 hingga 2 Mei 2026, total biaya penggunaan cloud adalah sebesar **$2.41**.

## Breakdown Biaya
Biaya penggunaan layanan terbagi sebagai berikut:
- Virtual Network: $1.07  
- Virtual Machine: $0.86  
- Storage: $0.46  
- Azure Database for MySQL: $0.02  
- Bandwidth: $0.00  
- Key Vault: $0.00  

Dari data tersebut, terlihat bahwa layanan jaringan dan komputasi menjadi penyumbang utama biaya.

## Analisis
Biaya terbesar berasal dari Virtual Network dan Virtual Machine. Hal ini menunjukkan bahwa penggunaan resource komputasi dan jaringan memiliki dampak paling signifikan terhadap total biaya cloud. Penggunaan Virtual Machine, meskipun hanya untuk pengujian, tetap menghasilkan biaya jika tidak dimatikan dengan benar.

## Rekomendasi Optimasi
Untuk mengurangi biaya penggunaan cloud, beberapa langkah yang dapat dilakukan:
1. Mematikan Virtual Machine saat tidak digunakan (deallocate).
2. Menghapus resource yang tidak diperlukan setelah pengujian selesai.
3. Menggunakan ukuran resource yang lebih kecil (right sizing).
4. Memanfaatkan layanan gratis atau tier gratis selama tahap pengembangan.

## Bukti
![Cost Analysis](week4/costanalysis_charts.png)