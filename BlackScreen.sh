#!/bin/sh

# Устанавливаем черный цвет фона
xsetroot -solid black

# Если вы хотите, чтобы весь экран был черным, можно использовать xrandr
# Получаем имя дисплея
DISPLAY_NAME=$(xrandr | grep " connected" | cut -d" " -f1)

# Устанавливаем черный цвет на весь экран
xrandr --output $DISPLAY_NAME --brightness 0

# Бесконечный цикл, чтобы скрипт не завершался
while true; do
    sleep 1
done
