#!/bin/bash

echo "Primjer aritmeticke operacije sabiranje + "
echo "Primjer 2 + 1"

echo "Rezultat: "
expr 2 + 1

echo "Primjer aritmeticke operacije oduzimanje - "
echo "Primjer 5 - 4"
echo "Rezultat: "
expr 5 - 4

echo "Primjer aritmeticke operacije mnozenje * pravilan oblik mnozenja u terminalu je \* "
echo "Primjer 7 \* 8"
echo "Rezultat: "
expr 7 \* 8

echo "Primjer aritmeticke operacije dijeljenje / "
echo "Primjer 6 / 2"
echo "Rezultat: "
expr 6 / 2

echo "Aritmeticki izrazi mogu i da se kombinuju, kao u sljedecem primjeru: "
echo "Primjer 6 + 7 / 3"
echo "Rezultat: "
expr 6 + 7 / 3

echo "Komanda expr ne prepoznaje zagrade, zbog cega morate manuelnim putem da prevazidjete pravo prvenstva, ukoliko za tim postoji potreba."
echo "Za izmjenu prava prvenstva mozete da koristite back znakove navoda, na sljedeci nacin: "
echo "Primjer int ='expr 5 + 7' "
echo "expr int / 3"
echo "Rezultat: "
int=`expr 6 + 7`
expr $int / 3

echo "Ili mozete da koristite direktniji put: "
echo "Primjer expr 'expr 6 + 7' / 3"
echo "Rezultat: "
expr `expr 6 + 7` / 3


