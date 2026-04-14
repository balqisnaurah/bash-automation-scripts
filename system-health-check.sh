#!/bin/bas
# Script untuk mengecek kesehatan sistem server
# Berguna untuk monitoring harian dan troubleshooting dasar

echo "========================================"
echo "	SYSTEM HEALTH CHECK REPORT"
echo "	$(date '+%Y-%m-%d %H:%M:%S')"
echo "========================================"

# Informasi sistem
echo ""
echo "[1] INFORMASI SISTEM"
echo "Hostname	: $(hostname)"
echo "OS	: $(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')"
echo "Kernel	: $(uname -r)"
echo "Uptime	: $(uptime -p)"

# Penggunaan CPU
echo ""
echo "[2] PENGGUNAAN CPU"
echo "Load Average	: $(cat /proc/loadavg | awk '{print $1, $2, $3}')"
echo "CPU Cores		: $(nproc)"

# Penggunaan Memory
echo ""
echo "[3] PENGGUNAAN MEMORY"
free -h | awk '/^Mem:/ {printf "Total: %s | Tersedian: %s\n", $2, $3, $7}'

# Penggunaan Disk
echo ""
echo "[4] PENGGUNAAN DISK"
df -h | grep -E '^/dev/' | awk '{printf "%-20s %s terpakai dari %s (%s)\n", $6, %3, %2, %5}'

# Cek service penting
echo ""
echo "[5] STATUS SERVICE"
for service in docker ssh; do
	if systemctl is-active --quiet $service 2>/dev/null; then
		echo "$service : AKTIF"
	else
		echo "$service : TIDAK AKTIF"
	fi
done

# Container Docker yang berjalan
echo ""
echo "[6] DOCKER CONTAINERS"
if command -v docker &> /dev/null; then
	docker ps -- format "{{.Names}} | {{.Status}} | {{.Ports}}" 2>/dev/null || echo "Docker tidak dapat diakses"
else
	echo "Docker belum terinstall"
fi

# Koneksi jaringan
echo ""
echo "[7] JARINGAN"
echo "IP Address:"
ip -4 addr show | grep inet | grep -v 127.0.0.1 | awk '{print "	" $2}'
echo "Konektivitas Internet: $(ping -c 1 -W 2 google.com &>/dev/null && echo 'OK' || echo 'GAGAL')"

echo ""
echo "========================================"
echo "	HEALTH CHECK SELESAI"
echo "========================================"
