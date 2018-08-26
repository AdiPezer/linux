echo "pokrecem komandu wc -l < chapter5.txt > chapter5.wcl 2> chapter5.err &  komanda wc uzima svoj input iz fajla chapter5.txt, svoj output (broj redova) salje u fajl chapter5.wcl, greske salje u fajl chapter5.err i izvodim sve u pozadini."

wc -l < chapter5.txt > chapter5.wcl 2> chapter5.err &
