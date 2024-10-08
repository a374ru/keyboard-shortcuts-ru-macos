#!/bin/bash

echo "Этот скрипт устанавливает для локального юзера фикс для русской раскладки в терминале."
echo "Подробнее можно прочитать здесь:"
echo "https://github.com/a374ru/keyboard-shortcuts-ru-macos/blob/main/README.md"
echo "Нажмите ПРОБЕЛ для продолжения и установки фикса или любую другую клавишу для выхода."

IFS=
read -n 1 -s -r K

if [ ! "$K" = ' ' ]; then
	exit
fi

TMPDIR=$(/usr/bin/mktemp -d)

mkdir -p $HOME/Library/KeyBindings/
curl -o $TMPDIR/DefaultKeyBinding.dict.json 'https://raw.githubusercontent.com/a374ru/keyboard-shortcuts-ru-macos/main/DefaultKeyBinding.dict.json'
plutil -convert binary1 -o $TMPDIR/DefaultKeyBinding.dict $TMPDIR/DefaultKeyBinding.dict.json
cp $TMPDIR/DefaultKeyBinding.dict $HOME/Library/KeyBindings/DefaultKeyBinding.dict

rm -rf $TMPDIR