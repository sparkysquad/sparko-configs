sudo pacman -S rustup
rustup install stable
git clone https://aur.archlinux.org/paru.git .paru
cd .paru && makepkg -si