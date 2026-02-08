# Springtrap GRUB Theme 

![Portada]()

Este es un tema personalizado de GRUB inspirado en Springtrap de Five Nights at Freddy's, diseñado para resoluciones 1920x1200 (16:10).

## Guía de Instalación en Arch Linux

### 1. Requisitos previos
- Tener GRUB instalado y funcionando.
- Acceso a una terminal con privilegios de superusuario (`sudo`).

### 2. Clonar o copiar el tema
Descarga o copia la carpeta `core/` de este repositorio a tu sistema local.

### 3. Copiar el tema a la carpeta de temas de GRUB
```sh
sudo mkdir -p /boot/grub/themes/springtrap
sudo cp -r core/* /boot/grub/themes/springtrap/
```

### 4. Editar la configuración de GRUB
Abre el archivo `/etc/default/grub` con tu editor favorito:
```sh
sudo nano /etc/default/grub
```
Agrega o edita la línea:
```sh
GRUB_THEME="/boot/grub/themes/springtrap/theme.txt"
```
Guarda y cierra el archivo.

### 5. Actualizar la configuración de GRUB
Ejecuta el siguiente comando para aplicar los cambios:
```sh
sudo grub-mkconfig -o /boot/grub/grub.cfg
```

### 6. Reinicia y disfruta
Reinicia tu computadora para ver el nuevo tema de GRUB.

---

**Notas:**
- Este tema está optimizado para resoluciones 1920x1200 (16:10). Puede no verse correctamente en otras resoluciones.
- Si quieres puede cambiar la imagen por una de tu resolución de pantalla pero debe ser JPEG baseline (no progresivo).
- Si tienes problemas, revisa la ruta del tema y los permisos de los archivos.
