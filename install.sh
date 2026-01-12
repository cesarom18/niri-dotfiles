# Update packages
echo "Actualizando paquetes"
sudo pacman -Syu

# Uninstall packages
echo "Desinstalando paquetes post-instalacion archinstall"
sudo pacman -Rns htop vim dunst xdg-desktop-gnome nautilus swaylock

# Remove folders
echo "Eliminando directorios no usados"
sudo rm -rf /etc/xdg/waybar
sudo rm -rf /etc/xdg/fuzzel
sudo rm -rf /etc/xdg/nvim

# Install core packages
echo "Instalando paquetes"
sudo pacman -S swaybg trash-cli mako foot foot-terminfo wl-clipboard fastfetch lazygit nvim tree-sitter fd ripgrep unzip nodejs npm

# Install wallpaper
echo "Instalando wallpaper"
cp -r ./wallpaper.png ~/Pictures

# Copy config system files
echo "Instalando archivos de configuraciono"
cp -r .config/* ~/.config
cp -r .fonts/* ~/.fonts

# Copy ly config file
echo "Instalando archivo de configuracion de ly"
sudo cp -r ./config.ini /etc/ly/config.ini

# Copy .bashrc
echo "Instalando archivo .bashrc"
cp -r ./.bashrc ~/.bashrc

# Install oh my posh
echo "Instalando oh my posh"
curl -s https://ohmyposh.dev/install.sh | bash -s

echo "Instalacion finalizada"
