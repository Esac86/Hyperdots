#!/bin/bash

# Variables
CONFIG_DIR="$HOME/.config"
REPO_CONFIG_DIR="./config"
PACKAGE_LIST="hyprland waybar swaybg"  # Añade aquí los paquetes que quieras instalar

# Función para mostrar la interfaz de inicio
show_interface() {
    clear
    echo "-----------------------------------"
    echo "     Script de Configuración       "
    echo "-----------------------------------"
    echo ""
    echo "Este script instalará los paquetes y configuraciones necesarios."
    echo ""
}

# Función para instalar paquetes
install_packages() {
    echo "Instalando paquetes..."
    sudo pacman -S $PACKAGE_LIST
}

# Función para copiar configuraciones
copy_configs() {
    echo "Copiando configuraciones..."
    cp -r "$REPO_CONFIG_DIR" "$CONFIG_DIR"
}

# Función para mostrar mensaje final
show_final_message() {
    echo ""
    echo "-----------------------------------"
    echo "       Instalación Completa        "
    echo "-----------------------------------"
    echo "Todos los paquetes y configuraciones han sido instalados correctamente."
    echo ""
}

# Ejecutar funciones
show_interface
install_packages
copy_configs
show_final_message
