#!/bin/bash

LOGIN=$1

# Verificar si el usuario existe
if ! id "$LOGIN" &>/dev/null; then
  echo "El usuario '$LOGIN' no existe."
  exit 1
fi

# Obtener grupo primario
GROUP=$(id -gn "$LOGIN")

# Eliminar usuario y su home
userdel -r "$LOGIN"

# Eliminar grupo si no tiene más miembros
if ! getent group "$GROUP" | grep -q ":""$GROUP"":; then
  groupdel "$GROUP"
fi

echo "Usuario '$LOGIN' y su grupo '$GROUP' eliminados"
