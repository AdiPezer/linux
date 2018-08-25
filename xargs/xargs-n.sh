echo "pokrecem komandu xargs -n2 ls < file i predajem samo po dva argumenta."

xargs -n2 ls < $1
