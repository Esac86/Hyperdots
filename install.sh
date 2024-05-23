#!/bin/bash

# Variables
CONFIG_DIR="$HOME/.config"
REPO_CONFIG_DIR="$(dirname "$0")/config"
PACKAGE_LIST="hyprland waybar swaybg kitty wofi nemo swappy ttf-font-awesome firefox nano pamixer brightnessctl"  # Añade aquí los paquetes que quieras instalar

# Función para actualizar e instalar paquetes
install_packages() {
    echo "Actualizando repositorios e instalando paquetes..."
    sudo pacman -Syu --noconfirm
    sudo pacman -S --noconfirm $PACKAGE_LIST
}

# Función para copiar configuraciones
copy_configs() {
    echo "Copiando configuraciones..."
    cp -r "$REPO_CONFIG_DIR/." "$CONFIG_DIR/"
}

# Función principal
main() {
    echo "Iniciando configuración..."
    install_packages
    copy_configs
    echo "Instalación completa. Todos los paquetes y configuraciones han sido instalados correctamente."
}

# Ejecutar la función principal
main
