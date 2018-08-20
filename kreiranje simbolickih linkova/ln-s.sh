echo "kreiram simbolicki link "

touch osoba
echo ime_prezime > osoba
ln -s osoba ime_prezime
cat ime_prezime
