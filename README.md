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

---

## Cara Menggunakan

**1. Clone repository ini**

```bash
git clone https://github.com/balqisnaurah/bash-automation-scripts.git
cd bash-automation-scripts
```

**2. Beri permission executable pada script**

```bash
chmod +x backup.sh
```

**3. Jalankan script**

```bash
./backup.sh
```

**4. Output yang diharapkan**

```
Backup berhasil disimpan di /home/user/Backup/backup_2026-04-14_10-30-00.tar.gz
```

---

## Teknologi yang Digunakan

| Teknologi | Fungsi |
|-----------|--------|
| Bash Shell | Bahasa scripting utama |
| tar | Kompresi dan pengarsipan file |
| date | Generating timestamp otomatis |

---

## Tentang

Repository ini dibuat sebagai bagian dari proses belajar scripting dan otomasi di lingkungan Linux, khususnya untuk memahami bagaimana tugas-tugas rutin seperti backup dapat diotomasi menggunakan Bash.
