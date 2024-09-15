TOOLBOX_PATH="/home/mastertoad/.local/share/JetBrains/Toolbox/bin/jetbrains-toolbox"

# Verifica se o arquivo existe e é executável
if [[ -x "$TOOLBOX_PATH" ]]; then
    "$TOOLBOX_PATH"
else
    echo "JetBrains Toolbox não encontrado em $TOOLBOX_PATH"
fi
