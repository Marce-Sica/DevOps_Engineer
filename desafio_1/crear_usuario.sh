#!/bin/bash

LOGIN=$1
FULLNAME=$2
DEPARTMENT=$3

# valido si el usuario ya existe
if id "$LOGIN" &>/dev/null; then
  echo "El usuario '$LOGIN' ya existe."
  exit 1
fi

# creo grupo si no existe
if ! getent group "$DEPARTMENT" > /dev/null; then
  groupadd "$DEPARTMENT"
fi

# genero password temporal
TEMP_PASS=$(openssl rand -base64 12)

# creo el usuario
useradd -m -c "$FULLNAME" -g "$DEPARTMENT" "$LOGIN"

# asigno contraseña
echo "$LOGIN:$TEMP_PASS" | chpasswd

# fuerzo cambio de contraseña en el primer login
chage -d 0 "$LOGIN"

# muestro contraseña en consola
echo "Usuario '$LOGIN' creado correctamente"
echo "Password temporal: $TEMP_PASS"

