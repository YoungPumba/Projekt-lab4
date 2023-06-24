#!/bin/bash

# Ustawienia domyślne
OPTION_1=skrypt.sh
OPTION_2=logs100.sh
OPTION_3=logs30.sh

# Funkcja wyświetlająca pomoc
show_help() {
  echo "Skrypt Bash sterowany flagami"
  echo "Użycie: ./Menju.sh [OPCJE]"
  echo ""
  echo "Opcje:"
  echo "  -a        wyświetli dzisiejszą datę"
  echo "  -b        utworzy automatycznie 100 plików logx.txt"
  echo "  -c        utworzenie automatycznie 30 plików"
  echo "  -h        Wyświetl pomoc"
}

# Analiza argumentów
while getopts "abch" option; do
  case $option in
    a) OPTION_1=true ;;
    b) OPTION_2=true ;;
    h) show_help; exit ;;
    *) show_help; exit ;;
  esac
done

# Twój kod Bash sterowany flagami
if $OPTION_1; then
  echo "Opcja 1 została włączona"
fi

if $OPTION_2; then
  echo "Opcja 2 została włączona"
fi
