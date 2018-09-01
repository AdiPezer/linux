\#!/bin/bash

echo "ako zelite da pozovete vrijednost varijable, ispred imena varijable stavite dolarski znak"

NAME=Adi
echo Hello $NAME

echo "prikazujem primjer kako varijable dodjeljujemo drugim varijablama"

ADNAN=Adnan
NAME=$ADNAN
PEZER=Pezer
LASTNAME=$PEZER
IME_I_PREZIME=$NAME$LASTNAME
echo Moje ime i prezime je ${NAME} ${LASTNAME}

echo "prikazujem primjer kombinacije podataka iz varijable sa drugim karakterima, formirajuci tako nove rijeci."

SUN=Sun
MON=Mon
TUE=Tues
WED=Wednes
THU=Thurs
FRI=Fri
SAT=Satur
WEEK=$SAT
echo Today is ${WEEK}day

echo "prikazujem primjer gdje se nalzi vise od jedne varijable kojoj se dodjeljuje vrijednost, ukoliko su varijable medjusobno odvojene white spaceom."

X=x Y=y

echo "dodjela vrijednosti varijablama izvodi se sdesna nalijevo:"

X=$Y Y=y
echo $X
Z=z Y=$Z
echo $Y

echo "U slucaju kada se poziva varijabla koja nije bila definisana, shell ne salje poruku o gresci, vec Vam vrati null vrijednost."

echo "Vrijednost varijable mozemo ukloniti, koristeci unset komandu."

Z=hello
echo "provjera da li postoji vrijednost."
echo $Z
echo "brisemo vrijednost"
unset Z
echo $Z


