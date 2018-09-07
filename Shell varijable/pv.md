## Pozicione varijable, ili shell argumenti

Kada shellov interpreter komandnog reda obradjuje input red, on prvu rijec u komandnom redu smatra za izvrsni (executable) fajl, a preostali dio reda kao argumente koje predaje izvrsnom fajlu.Ukoliko je izvrsni fajl shell program, ovi argumenti se tom programu predaju kao pozicione varijable.Prvi argument koji se predaje programu dodjeljuje se varijabli $1, drugi argument je $2 i tako dalje, do $9.
Mozemo da zapazimo da su imena varijabli, u stvari cifre od 1 do 9, dolarski znak je, kao i uvijek, poseban karakter koji prouzrokuje zamjenu varijable.
Poziciona variabla $0 uvijek sadrzi ime programa.

## Sprijecavanje izmjene varijable
 
Ako je varijabli dodjeljena neka vrijednost, pri cemu hocete da budete sigurni da kasnije nece doci do izmjene te vrijednosti, pomocu sljedece komande mozete da odredite da varijabla bude read-only varijabla readonly variable.

## Varijable stavljate na raspolaganje subshellovima, pomocu exporta

Kada shell izvrsava program, on postavlja novo okruzenje.Ono se zove subshell.
U shellu varijable se posmatraju kao lokalne, drugim rijecima, one ne mogu da budu prepoznate izvan shella, u kome im je bila dodjeljena vrijednost.
Varijablu mozete da stavite na raspolaganje bilo kojim subshellovima koje izvrsavate, tako sto cete je eksportovati pomocu komande export.Vase varijable ne mogu da se stave na raspolaganje drugim korisnicima.

