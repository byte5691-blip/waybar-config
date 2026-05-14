#!/bin/bash

# Путь к папке конфига Waybar
WAYBAR_DIR="$HOME/.config/waybar"

# Создаем папку, если её вдруг нет
mkdir -p "$WAYBAR_DIR"

# Копируем конфиг и стили из текущей папки
cp ./config.jsonc "$WAYBAR_DIR/config"
cp ./style.css "$WAYBAR_DIR/style.css"

# Перезапускаем waybar, чтобы применить изменения
killall waybar && waybar &

echo "Конфиги Waybar обновлены!"
