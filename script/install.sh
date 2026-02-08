#!/bin/bash

set -e

THEME_DIR="/boot/grub/themes/springtrap"
if [ -d "core" ]; then
	THEME_SRC="core"
elif [ -d "../core" ]; then
	THEME_SRC="../core"
else
	echo "No se encontró la carpeta 'core'. Descarga el repositorio completo o ejecuta el script desde la raíz."
	exit 1
fi

echo "Instalando tema Springtrap para GRUB..."

sudo mkdir -p "$THEME_DIR"
sudo cp -r "$THEME_SRC"/* "$THEME_DIR/"

CONFIG_FILE="/etc/default/grub"
THEME_LINE="GRUB_THEME=\"$THEME_DIR/theme.txt\""

if grep -q '^GRUB_THEME=' "$CONFIG_FILE"; then
	echo "Actualizando línea GRUB_THEME en $CONFIG_FILE..."
	sudo sed -i "s|^GRUB_THEME=.*|$THEME_LINE|" "$CONFIG_FILE"
else
	echo "Agregando línea GRUB_THEME en $CONFIG_FILE..."
	echo "$THEME_LINE" | sudo tee -a "$CONFIG_FILE" > /dev/null
fi

echo "Actualizando configuración de GRUB..."
sudo grub-mkconfig -o /boot/grub/grub.cfg

echo "Instalación completada. Reinicia tu computadora para ver el nuevo tema."
