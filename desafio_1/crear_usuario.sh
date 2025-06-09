#!/bin/bash

LOGIN=$1
FULLNAME=$2
DEPARTMENT=$3

# Validar si el usuario ya existe
if id "$LOGIN" &>/dev/null; then
  echo "El usuario '$LOGIN' ya existe."
  exit 1
fi

# Crear grupo si no existe
if ! getent group "$DEPARTMENT" > /dev/null; then
  groupadd "$DEPARTMENT"
fi

# Generar password temporal
TEMP_PASS=$(openssl rand -base64 12)

# Crear el usuario
useradd -m -c "$FULLNAME" -g "$DEPARTMENT" "$LOGIN"

# Asignar contraseña
echo "$LOGIN:$TEMP_PASS" | chpasswd

# Forzar cambio de contraseña en el primer login
chage -d 0 "$LOGIN"

# Mostrar contraseña en consola
echo "Usuario '$LOGIN' creado correctamente"
echo "Password temporal: $TEMP_PASS"

