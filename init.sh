echo 'Ivokun initialization'
# Update everything
sudo apt update
sudo apt upgrade -y

# Add dev directory
mkdir -p ~/Documents/dev

# Install minimal dependency
sudo apt install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev python3 build-essential -y

# Install Rust compiler
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Install alacritty
# https://github.com/alacritty/alacritty
cd ~/Documents/dev
git clone https://github.com/alacritty/alacritty.git
cd alacritty && cargo build --release


cd ~
cd


