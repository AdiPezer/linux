echo "pokrecem komandu ls -l > dirfile i preusmjeravam output na odredjeni fajl."

ls -l > $1

echo "listam sadrzaj fajla $1 ."
cat $1

