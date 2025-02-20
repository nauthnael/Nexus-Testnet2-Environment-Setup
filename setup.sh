#!/bin/bash

# Cập nhật hệ thống
echo "Cập nhật hệ thống..."
sudo apt update -y

# Cài đặt các gói cơ bản
echo "Cài đặt các gói cơ bản: unzip, tmux, git..."
sudo apt install unzip tmux git -y

# Cài đặt build-essential
echo "Cài đặt build-essential..."
sudo apt install build-essential -y

# Cài đặt pkg-config và libssl-dev
echo "Cài đặt pkg-config và libssl-dev..."
sudo apt install -y pkg-config libssl-dev

# Di chuyển đến thư mục /usr/local
echo "Di chuyển đến thư mục /usr/local..."
cd /usr/local || { echo "Không thể di chuyển đến /usr/local"; exit 1; }

# Tải xuống protoc
echo "Tải xuống protoc phiên bản 29.3..."
sudo wget https://github.com/protocolbuffers/protobuf/releases/download/v29.3/protoc-29.3-linux-x86_64.zip

# Giải nén protoc
echo "Giải nén protoc..."
sudo unzip protoc-29.3-linux-x86_64.zip

# Phân quyền thực thi cho protoc
echo "Phân quyền thực thi cho protoc..."
sudo chmod +x /usr/local/bin/protoc

# Cài đặt Rust
echo "Cài đặt Rust..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Load môi trường Rust
echo "Load môi trường Rust..."
source "$HOME/.cargo/env"

# Thông báo hoàn thành
echo "Cài đặt hoàn tất!"
