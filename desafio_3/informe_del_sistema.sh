#!/bin/bash

# se habilita el modo "strict" para que cualquier error detenga el script
set -euo pipefail

# muestro el uso de disco
disk_usage() {
    echo "Uso del disco:"
    df -hT /
}

# muestro la memoria disponible
memory_usage() {
    echo "Memoria disponible:"
    free -h
}

# muestro el tiempo de actividad del sistema
system_uptime() {
    echo "Tiempo de actividad del sistema:"
    uptime -p
}

# muestro los usuarios conectados
connected_users() {
    echo "Usuarios conectados:"
    who
}

# muestro los 5 procesos con mayor consumo de CPU
top_processes() {
    echo "Top 5 procesos por uso de CPU:"
    ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
}

# muestro la información del sistema operativo
system_info() {
    echo "Información del sistema:"
    uname -a
}

# función principal que orquesta todo
main() {
    echo "Informe del sistema generado el: $(date)"
    echo "-----------------------------------------"

    disk_usage || { echo "Error al obtener uso de disco"; exit 1; }
    memory_usage || { echo "Error al obtener memoria"; exit 1; }
    system_uptime || { echo "Error al obtener uptime"; exit 1; }
    connected_users || { echo "Error al listar usuarios"; exit 1; }
    top_processes || { echo "Error al obtener procesos"; exit 1; }
    system_info || { echo "Error al obtener info del sistema"; exit 1; }

    echo "Informe completado correctamente."
}

# se ejecuta el script
main
