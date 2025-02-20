# **Setup Script for Environment and Nexus Installation**

This repository contains a shell script (`setup.sh`) to automate the setup of your environment, including installing essential tools, configuring `protoc`, setting up Rust, and installing the Nexus CLI.

## **Features**
- Automatically detects CPU architecture (`x86_64` or `aarch_64`) to download the correct version of `protoc`.
- Installs necessary packages such as `unzip`, `tmux`, `git`, `build-essential`, `pkg-config`, and `libssl-dev`.
- Configures `protoc` for Protocol Buffers.
- Installs Rust and loads its environment.
- Installs the Nexus CLI using the official installation script.

## **Requirements**
- A Debian-based Linux distribution (e.g., Ubuntu).
- Internet connection to download required files.
- Root privileges (or `sudo` access) to install packages.

## **How to Use**

### **Option 1: Run the Script Directly (One-Liner)**

You can run the script directly from the internet without downloading it first.

#### Using `curl`:
```bash
curl -sSL https://raw.githubusercontent.com/nauthnael/Nexus-Testnet2-Environment-Setup/main/setup.sh | sudo bash
```

#### Using `wget`:
```bash
wget -qO- https://raw.githubusercontent.com/nauthnael/Nexus-Testnet2-Environment-Setup/main/setup.sh | sudo bash
```

### **Option 2: Download and Run Manually**

1. **Download the script**:
   ```bash
   curl -O https://raw.githubusercontent.com/nauthnael/Nexus-Testnet2-Environment-Setup/main/setup.sh
   # or
   wget https://raw.githubusercontent.com/nauthnael/Nexus-Testnet2-Environment-Setup/main/setup.sh
   ```

2. **Make it executable**:
   ```bash
   chmod +x setup.sh
   ```

3. **Run the script**:
   ```bash
   sudo ./setup.sh
   ```

### **Step 4: Verify Installation**
- To verify that `protoc` is installed correctly, run:
  ```bash
  protoc --version
  ```
- To verify that Rust is installed correctly, run:
  ```bash
  rustc --version
  ```
- To verify that Nexus CLI is installed correctly, run:
  ```bash
  nexus --help
  ```

## **Changelog**

### **v1.2**
- Added CPU architecture detection to dynamically download the correct `protoc` binary (`x86_64` or `aarch_64`).
- Integrated Nexus CLI installation.
- Improved script structure and added comments for clarity.

### **v1.1**
- Added Rust installation and environment loading.

### **v1.0**
- Initial release with basic system setup and `protoc` installation for `x86_64`.

## **Known Limitations**
- The script currently supports only Debian-based Linux distributions (e.g., Ubuntu). Users on other distributions may need to adjust package manager commands (e.g., `apt`).
- Only supports `x86_64` and `aarch_64` architectures for `protoc`. Other architectures will require manual updates to the script.

## **Contributing**
If you find any issues or have suggestions for improvement, feel free to open an issue or submit a pull request.

## **License**
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

### **Example Commands**
Here’s a quick summary of the commands you’ll use:

1. **Run the script directly**:
   ```bash
   curl -sSL https://raw.githubusercontent.com/nauthnael/Nexus-Testnet2-Environment-Setup/main/setup.sh | sudo bash
   # or
   wget -qO- https://raw.githubusercontent.com/nauthnael/Nexus-Testnet2-Environment-Setup/main/setup.sh | sudo bash
   ```

2. **Download and run manually**:
   ```bash
   curl -O https://raw.githubusercontent.com/nauthnael/Nexus-Testnet2-Environment-Setup/main/setup.sh
   chmod +x setup.sh
   sudo ./setup.sh
   ```

---
