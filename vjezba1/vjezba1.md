1. Testirati sljedecu komandu

echo ~/../.  

2. Pratiti output sljedecih komandi


cd
pwd
cd /
pwd
cd ~
pwd
cd /home
pwd
cd $HOME
pwd


3. Nekoliko nacina kako doci do home dira, trenutno logovanog korisnika


cd ~
cd
cd /home/$USER
cd  $HOME


4. Testirati sljedecu komandu

echo user is $USER and home dir is $HOME  

5. U varijabli `$PATH` se nalaze sve putanje do programa, tj. binary programa koje izvrsavamo kao sto su `nano`, `echo`, `ls` itd. Sadrzaj `$PATH` environment varijable provjeravamo na sljedeci nacin

echo $PATH  

6. Oznaka za trenutni direktorij za sve komande je znak tacka odnosno znak `.` . Primjeri rada sa trenutnim direktorijem.

`ls .`  
`cd .`  
find . -depth 1 


7. Koristimo komandu ls -a | sort i primjeticemo da su izlistani znakovi `.` i `..` na prve dvije linije

`.` - je oznaka za trenutni direktorij  
`..` - je oznaka za direktorij iznad, jedan level, tzv parent direktorij  

8. Koristimo komandu `ls -A` da ne bi izlistali `.` i `..`

pokrenuti komandu ls -a  te zatim ls -A i uociti razliku


9. Implicitno cemo raditi sa trenutnim direktorijem

ls  
find

implicira odnosno podrazumijeva se da, u slucaju da nije naveden direktorij, radimo sa trenutnim direktorjime.

Implicitno radimo sa current dir - ls
Explicitno navodimo komandi ls da radimo sa current dir - ls .


10. Vhunski direktorij je `/` i on nema ime, roditelj je svih ostalih direktorija.

ls /  
cd / ; ls .  

11. Logujemo se kao root korisnik pomocu komande `sudo`

sudo su root -l  

12. Kao root korinsik potrebno je da ocistimo logove

sudo su root -l  


#!/bin/bash
cd /var/log
cat /dev/null > messages
cat /dev/null > wtmp
echo "Log files cleaned up."


13. Sada cemo napraviti bolju verziju skripte za ciscenje fajlova


#!/bin/bash
LOG_DIR=/var/log
cd $LOG_DIR
cat /dev/null > messagesc
cat /dev/null > wtmp
echo "Logs cleaned up."
exit


14. Jos bolja verzija skripte, sada provjeravamo da li je trenutno logovani korisnik root, jer samo root ima permisije da edituje log fajlove, osim ako to ni je drukcije explicitno naglaseno.


Napraviti novi fajl i staviti sljedeci sadrzaj




#!/bin/bash
LOG_DIR=/var/log
ROOT_UID=0 # Only users with $UID 0 have root privileges.
E_XCD=86 # Can't change directory?
E_NOTROOT=87 # Non-root exit error.

if [ "$UID" -ne "$ROOT_UID" ]
then
  echo "Must be root to run this script."
  exit $E_NOTROOT
fi

cat /dev/null > messages
cat /dev/null > wtmp

echo "Log files cleaned up."
exit 0


# A zero return value from the script upon exit indicates success


15. Pokretanje skripti, mozemo uraditi na sljedeci nacin

sh scriptname.sh  
bash scriptname.sh  

ili ako ima execute permisije trenutni korisnik

./scriptname.sh  


Much more convenient is to make the script itself directly executable with a chmod



chmod 555 scriptname (gives everyone read/execute permission)  
chmod +rx scriptname (gives everyone read/execute permission)  
chmod u+rx scriptname (gives only the script owner read/execute permission)  


16. Command separator [semicolon]. Permits putting two or more commands on the same line.


echo hello; echo there  


17. Testiranje statusa skripte. Dodati liniju ispod u svaku skriptu koja je napravljena do sada

echo $?  

Ako na kraju skripta pokaze 0 tj. nulu to je znak da je skripta uspjesno izvrsena, svi ostali brojevi kao sto je 1,2,3 itd su oznaka za neku vrstu greske.


18. Primjeri za Extended Brace expansion. Pokrenuti u shellu primjere ispod.

echo {a..z}  

echo {0..3}  


19. Running a loop in the background

Ovo ispod je skripta, snimiti je u fajl loop.sh



#!/bin/bash
for i in 1 2 3 4 5 6 7 8 9 10
do
  echo "$i "
  done & # Run this loop in background.
done
exit 0


20. && AND logical operator.


#!/bin/bash
a=1
b=1
c=24
d=47
if [ "$a" -eq "$b" ]
 then
   echo "$a is equal to $b."
fi
if [ "$c" -eq 24 -a "$d" -eq 47 ]
  then
echo "$c equals 24 and $d equals 47."
fi

