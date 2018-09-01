## Uslovna zamjena varijable
Najcesci nacin na koji moze da se dobije vrijednost varijable jeste da se ispred varijable stavi dolarski znak ($), sto ima za posljedicu da se ona zamjeni njenom vrijednoscu.
U shellu mozete da odredite uslove pod kojima ce biti izvedena zamjena varijable.To se zove uslovna zamjena.Uslovne zamjene varijabli uvijek se stavljaju unutar viticastih zagrada ({}).

### Zamjena varijabli default vrijednostima

Kada se pozove varijabla koja prethodno nije bila postavljena, ona se zamjenjuje null vrijednoscu.
Shell pruza mogucnost da uspostavimo default vrijednost za zamjenu varijable, koristeci sljedeci oblik ${variable:-value} gdje je variable ime varijable, a value default zamjena.

### Uslovna zamjena varijable, uz provjeru postojanja greske

Postoji jos jedan nacin zamjene, koji pruza mogucnost provjere postojanja greske prilikom zamjene varijable: ${variable:?message}
Ako je variable postavljena, zamjenjuje se njena vrijednost, ako nije postavljena, message se upisuje u standardni fajl za gresku. Ukoliko se zamjena izvodi u shell programu, program odmah zavrsava rad.

