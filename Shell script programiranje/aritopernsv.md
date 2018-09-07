## Izvodjenje aritmetickih operacija nad shell varijablama

Varijable se u vecini programskih jezika kucaju, sto znaci da su ogranicene na odredjene vrste podataka, kao sto su brojevi, ili karakteri.
Shell varijable uvijek se pamte kao karakteri.
Da biste nad shell varijablama mogli da izvodite aritmeticke operacije, morate da koristite komandu expr.
Komanda expr izracunava vrijednost svojih argumenata kao matematickih izraza.
Opsti oblik ove komande je sljedeci:

expr integer operator integer

Sljedeci operatori su vazeci aritmeticki operatori:

+ : Sabira dva cijela broja

- : Oduzima drugi cijeli broj od provog cijelog broja.

* : Mnozi dva cijela broja (Kada zelimo da mnozimo dva cijela broja u terminalu moramo koristiti ispravan oblik za mnozenje a to je " expr 4 \* 5 " )

/ : Prci cijeli broj dijeli drugim cijelim brojem.

% : Daje modul (ostatak) dijeljenja.



