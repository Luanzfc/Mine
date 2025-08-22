#!/bin/bash
# Quick install CGMiner (Ubuntu 20.04+)

echo "=== Cập nhật hệ thống ==="
sudo apt update && sudo apt upgrade -y

echo "=== Cài thư viện cần thiết ==="
sudo apt install -y build-essential git automake libtool pkg-config \
libcurl4-openssl-dev libudev-dev screen

echo "=== Clone & build CGMiner ==="
git clone https://github.com/ckolivas/cgminer.git
cd cgminer
./autogen.sh
./configure --enable-scrypt
make

echo "=== CGMiner đã sẵn sàng! ==="
echo "Chạy thử:"
echo "./cgminer --scrypt -o stratum+tcp://stratum.aikapool.com:7915 -u DEBEJZdp7X5vvP4e4FJZtMzGrNnMrebTKJ.Luanz -p x"
