#!/bin/bash

LOGIN=$1

# verifico si el usuario existe
if ! id "$LOGIN" &>/dev/null; then
  echo "El usuario '$LOGIN' no existe."
  exit 1
fi

# obtengo grupo primario
GROUP=$(id -gn "$LOGIN")

# elimino usuario y su home
userdel -r "$LOGIN"

# elimino grupo si no tiene más miembros
if ! getent group "$GROUP" | grep -q ":""$GROUP"":; then
  groupdel "$GROUP"
fi

echo "Usuario '$LOGIN' y su grupo '$GROUP' eliminados"
