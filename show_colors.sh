#!/bin/bash
# Mostra i colori ANSI disponibili con i codici

echo ""
echo "Alcuni codici (30–37 per foreground, 40–47 per background):"
for fg in {30..37}; do
  for bg in {40..470}; do
    printf "\e[%s;%sm %s;%s \e[0m " $fg $bg $fg $bg
  done
  echo
done

echo ""
echo "Codici intensi (90–97 per foreground, 100–107 per background):"
for fg in {90..97}; do
  for bg in {100..107}; do
    printf "\e[%s;%sm %s;%s \e[0m " $fg $bg $fg $bg
  done
  echo
done

echo ""
echo "Codici dei 256 colori disponibili:"
for i in {0..255}; do
  printf "\e[38;5;%sm%3s\e[0m " $i $i
  if (( i % 16 == 15 )); then echo; fi
done

echo ""
echo -e "\e[31mEsempio di utilizzo\e[0m"
echo  "\e[31mRosso\e[0m normale"
echo -e "\e[31mRosso\e[0m normale"
echo "\e[1;34mBlu\e[0m intenso"
echo -e "\e[1;34mBlu\e[0m intenso"
