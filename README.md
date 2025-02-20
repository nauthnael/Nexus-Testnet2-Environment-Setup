# Nexus Testnet 2 Environment Setup Script

This repository contains a bash script designed to automate the setup of the environment required for running Nexus Testnet 2. The script installs necessary dependencies, configures tools like `protoc`, and sets up Rust for development.

## Features
- Automatically updates the system and installs essential packages (`unzip`, `tmux`, `git`, etc.).
- Installs build tools (`build-essential`) and libraries (`pkg-config`, `libssl-dev`).
- Downloads and configures `protoc` (Protocol Buffers compiler).
- Installs Rust via `rustup`.

## Usage
1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/Nexus-Testnet2-Setup.git
   cd Nexus-Testnet2-Setup
