#! /bin/bash

echo "Prikazujem primjer zamjene varijabli default vrijednostima." 

echo Hello $UNAME
echo Hello ${UNAME:-there}
echo $UNAME
UNAME=Adi
echo Hello ${UNAME:-there}

echo "U prethodnom primjeru, kada koristite ovaj tip zamjene varijabli, default vrijednost se zamjenjuje u komandnom redu, ali vrijednost varijable se ne mijenja."

echo "Prikazujem drugi tip zamjene, gdje se zamjenjuje default vrijednost, ali se, pored toga, i samoj varijabli dodjeljuje default vrijednost. Ova zamjena ima oblik ${variable:=value}"

echo Hello $NAME
echo Hello ${NAME:=there}
echo "Provjera vrijednosti"
echo $NAME
NAME=Adi
echo Hello ${NAME:-there}

echo "Vrijednost koja se zamjenjuje ne mora da bude literal, to moze da bude komanda koja se nalazi unutar back znakova navoda."
HOMEDIR={$HOME:-`ls`}

echo "Prikazujem treci tip zamjene varijable koji mijenja specificiranu vrijednost, pod uslovom da je varijabla prethodno bila postavljena ${variable:+value}."

echo "Ako je variable bila postavljena, zamjenjuje se value, ako  variable nije bila postavljena, nista se ne zamjenjuje."

ERROPT=A
echo ${ERROPT:+"Error Tracking is Active"}
ERROPT=
echo ${ERROPT:+"Error Tracking is Active"}

echo "prikazujem primjer zamjene varijable, uz provjeru postojanja greske"

PNAME=""
echo ${PNAME:?"PNAME has not been set"}
echo "rezultat"
PNAME="Adnan Pezer"
echo ${PNAME:?"PNAME has not been set"}
echo "rezultat"
