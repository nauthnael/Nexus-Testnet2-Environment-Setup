#!/bin/bash

# Hàm kiểm tra kiến trúc CPU
get_cpu_architecture() {
    # Lấy thông tin kiến trúc CPU
    ARCH=$(uname -m)
    case "$ARCH" in
        x86_64)
            echo "x86_64"
            ;;
        aarch64 | arm64)
            echo "aarch_64"
            ;;
        *)
            echo "Kiến trúc CPU không được hỗ trợ: $ARCH"
            exit 1
            ;;
    esac
}

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

# Kiểm tra kiến trúc CPU
echo "Kiểm tra kiến trúc CPU..."
CPU_ARCH=$(get_cpu_architecture)

# Xác định đường dẫn tải protoc dựa trên kiến trúc CPU
if [ "$CPU_ARCH" == "x86_64" ]; then
    PROTOC_URL="https://github.com/protocolbuffers/protobuf/releases/download/v29.3/protoc-29.3-linux-x86_64.zip"
elif [ "$CPU_ARCH" == "aarch_64" ]; then
    PROTOC_URL="https://github.com/protocolbuffers/protobuf/releases/download/v29.3/protoc-29.3-linux-aarch_64.zip"
fi

# Di chuyển đến thư mục /usr/local
echo "Di chuyển đến thư mục /usr/local..."
cd /usr/local || { echo "Không thể di chuyển đến /usr/local"; exit 1; }

# Tải xuống protoc
echo "Tải xuống protoc cho kiến trúc $CPU_ARCH..."
sudo wget "$PROTOC_URL"

# Giải nén protoc
echo "Giải nén protoc..."
sudo unzip "$(basename "$PROTOC_URL")"

# Phân quyền thực thi cho protoc
echo "Phân quyền thực thi cho protoc..."
sudo chmod +x /usr/local/bin/protoc

# Cài đặt Rust
echo "Cài đặt Rust..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Load môi trường Rust
echo "Load môi trường Rust..."
source "$HOME/.cargo/env"

# Cài đặt Nexus
echo "Cài đặt Nexus..."
curl https://cli.nexus.xyz/ | sh

# Thông báo hoàn thành
echo "Cài đặt hoàn tất!"
