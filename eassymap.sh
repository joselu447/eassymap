#!/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo "Por favor, ejecuta el script como root para tener acceso completo a Nmap."
    exit 1
fi

ip_range="192.168.1.1-254"

output_file="resultado_escaneo.txt"

nmap -sP $ip_range -oN $output_file

# Informar al usuario que el escaneo ha finalizado
echo "Escaneo completado. Resultados guardados en: $output_file"
