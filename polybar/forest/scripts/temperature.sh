#!/bin/bash

# Obtém a saída do comando sensors
temp_output=$(sensors)

# Extrai a temperatura do Core 0 (ajuste conforme necessário)
temp=$(echo "$temp_output" | grep 'Core 0' | awk '{print $3}')

# Remove o caractere '+' e '°C'
temp=$(echo "$temp" | sed 's/+//;s/°C//')

# Exibe a temperatura
echo "$temp°C"
