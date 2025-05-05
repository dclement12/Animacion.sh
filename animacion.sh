#!/bin/sh

pos=0
dir=1

while true
do
  clear
  printf "%${pos}s" "o"
  sleep 0.05

  # Cambia la dirección si llega al borde (ajustable)
  if [ "$pos" -ge 50 ]; then
    dir=-1
  elif [ "$pos" -le 0 ]; then
    dir=1
  fi

  # movimienot pelota
  pos=$((pos + dir))
done
