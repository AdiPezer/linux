echo "pokrecem komandu find / -name "$1" -print > find.results 2>/dev/null & i radim pretrazivanje u pozadini"

find / -name "$1" -print > find.results 2>/dev/null &

