# Bash Automation Scripts

Kumpulan script Bash sederhana untuk otomasi tugas harian di lingkungan Linux.

---

## Daftar Script

### `backup.sh`

Script untuk melakukan backup folder `Documents` ke direktori `Backup` dalam format `.tar.gz` dengan timestamp otomatis.

**Fitur:**
- Membuat direktori backup secara otomatis jika belum ada
- Menambahkan timestamp pada nama file backup
- Menggunakan kompresi gzip untuk menghemat storage

**Cara menggunakan:**

```bash
chmod +x backup.sh
./backup.sh
```

**Contoh output:**

```
Backup berhasil disimpan di /home/user/Backup/backup_2026-04-14_10-30-00.tar.gz
```

---

### `system-health-check.sh`

Script untuk mengecek kesehatan sistem server secara menyeluruh. Dirancang untuk kebutuhan monitoring harian dan troubleshooting dasar.

**Informasi yang ditampilkan:**
- Informasi sistem (hostname, OS, kernel, uptime)
- Penggunaan CPU (load average dan jumlah core)
- Penggunaan memory (total, terpakai, tersedia)
- Penggunaan disk per partisi
- Status service penting (Docker, SSH)
- Daftar Docker container yang sedang berjalan
- Konektivitas jaringan dan IP address

**Cara menggunakan:**

```bash
chmod +x system-health-check.sh
./system-health-check.sh
```

**Contoh output:**

```
========================================
  SYSTEM HEALTH CHECK REPORT
  2026-04-14 10:30:00
========================================

[1] INFORMASI SISTEM
Hostname  : ubuntu-server
OS        : Ubuntu 24.04 LTS
Kernel    : 6.8.0-xx-generic
Uptime    : up 2 hours, 15 minutes

[2] PENGGUNAAN CPU
Load Average : 0.15 0.10 0.05
CPU Cores    : 2

[3] PENGGUNAAN MEMORY
Total: 1.9Gi | Terpakai: 512Mi | Tersedia: 1.2Gi

[4] PENGGUNAAN DISK
/                    4.2G terpakai dari 9.8G (43%)

[5] STATUS SERVICE
docker : AKTIF
ssh : AKTIF

[6] DOCKER CONTAINERS
webserver | Up 2 hours | 0.0.0.0:8080->80/tcp
grafana | Up 1 hour | 0.0.0.0:3000->3000/tcp

[7] JARINGAN
IP Address:
  10.0.2.15/24
Konektivitas Internet: OK

========================================
  HEALTH CHECK SELESAI
========================================
```

---

## Struktur File

```
bash-automation-scripts/
├── backup.sh                # Script backup otomatis dengan timestamp
├── system-health-check.sh   # Script monitoring kesehatan sistem
└── README.md
```

---

## Teknologi yang Digunakan

| Teknologi | Fungsi |
|-----------|--------|
| Bash Shell | Bahasa scripting utama |
| tar | Kompresi dan pengarsipan file |
| date | Generating timestamp otomatis |
| systemctl | Pengecekan status service |
| Docker CLI | Menampilkan container yang berjalan |

---

## Tentang

Repository ini dibuat sebagai bagian dari proses belajar scripting dan otomasi di lingkungan Linux, khususnya untuk memahami bagaimana tugas-tugas rutin seperti backup dan monitoring sistem dapat diotomasi menggunakan Bash.
