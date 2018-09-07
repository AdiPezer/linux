echo "Pokrecem komandu readonly i sprijecavam izmjenu varijable"

readonly $1

echo "Prikazujem primjer stavljanja varijable na rapolaganje subshellovima, pomocu exporta"

PS1="Enter Command: "
export PS1
sh



