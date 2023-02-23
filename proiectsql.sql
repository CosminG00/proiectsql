CREATE TABLE BIBLIOTECA_PROIECT
(id_biblioteca NUMBER(5) PRIMARY KEY,
denumire_biblioteca VARCHAR2(200) NOT NULL,
adresa_biblioteca Varchar2(200) not null,
 telefon_biblioteca NUMBER(10) NOT NULL);

CREATE TABLE CLIENTI_PROIECT
(ID_client NUMBER(5) PRIMARY KEY,
 nume_client VARCHAR2(20) NOT NULL,
 prenume_client Varchar2(20) not null,
 telefon_client NUMBER(10) NOT NULL,
 imprumuturi_anterioare number(20)
 );

CREATE TABLE ANGAJATI_PROIECT
(ID_angajat number(5) primary key,
id_biblioteca number(5) not null,
nume_angajat varchar2(20) not null,
salariu number(20) not null,
functie varchar2(20) not null,
data_angajare date
);

ALTER TABLE ANGAJATI_PROIECT
add CONSTRAINT fk_biblioteca_angajat FOREIGN KEY (id_biblioteca) REFERENCES BIBLIOTECA_PROIECT (id_biblioteca);

CREATE TABLE STOC_PROIECT
(id_carte number(5) primary key,
titlu_carte varchar2(30) not null,
gen_carte varchar2(30) not null,
autor_carte number(5) not null);

CREATE TABLE CARTE_IMPRUMUTATA
(id_biblioteca number(5) not null,
Id_client number(5) not null,
Id_angajat number(5) not null,
Id_carte number(5) not null,
Data_imprumut date,
Data_returnare date,
CONSTRAINT fk_imprumut_biblioteca FOREIGN KEY (id_biblioteca) references 
biblioteca_proiect (id_biblioteca),
CONSTRAINT fk_client_biblioteca FOREIGN KEY (id_client) references clienti_proiect (id_client),
CONSTRAINT fk_angajat_biblioteca FOREIGN KEY (id_angajat) references angajati_proiect (id_angajat),
CONSTRAINT fk_carte_biblioteca FOREIGN KEY (id_carte ) references stoc_proiect (id_carte)  );

ALTER TABLE STOC_PROIECT
MODIFY autor_carte varchar2(30);

ALTER TABLE CLIENTI_PROIECT
Add (cnp number(30) not null);

ALTER TABLE CLIENTI_PROIECT
DROP COLUMN cnp;

ALTER TABLE BIBLIOTECA_PROIECT
ADD numar_angajati number(20);

ALTER TABLE BIBLIOTECA_PROIECT
MODIFY numar_angajati not null;


INSERT INTO BIBLIOTECA_PROIECT (id_biblioteca, denumire_biblioteca, adresa_biblioteca, telefon_biblioteca, numar_angajati)
VALUES(1,'Bibloteca Universitara','Bucuresti',0711111111,2);

INSERT INTO BIBLIOTECA_PROIECT (id_biblioteca, denumire_biblioteca, adresa_biblioteca, telefon_biblioteca, numar_angajati)
VALUES(2,'Bibloteca Municipal','Timisoara',0722222222,3);

INSERT INTO BIBLIOTECA_PROIECT (id_biblioteca, denumire_biblioteca, adresa_biblioteca, telefon_biblioteca, numar_angajati)
VALUES(3,'Bibloteca Judeteana','Cluj-Napoca',0733333333,3);

INSERT INTO BIBLIOTECA_PROIECT (id_biblioteca, denumire_biblioteca, adresa_biblioteca, telefon_biblioteca, numar_angajati)
VALUES(4,'Bibloteca Scolii','Brasov',0744444444,3);

INSERT INTO BIBLIOTECA_PROIECT (id_biblioteca, denumire_biblioteca, adresa_biblioteca, telefon_biblioteca, numar_angajati)
VALUES(5,'Bibloteca Orasului','Iasi',0755555555,4);

INSERT INTO BIBLIOTECA_PROIECT (id_biblioteca, denumire_biblioteca, adresa_biblioteca, telefon_biblioteca, numar_angajati)
VALUES(6,'Bibloteca Academiei','Sibiu',0766666666,5);

INSERT INTO BIBLIOTECA_PROIECT (id_biblioteca, denumire_biblioteca, adresa_biblioteca, telefon_biblioteca, numar_angajati)
VALUES(7,'Bibloteca Regionale','Arad',0777777777,6);

INSERT INTO BIBLIOTECA_PROIECT (id_biblioteca, denumire_biblioteca, adresa_biblioteca, telefon_biblioteca, numar_angajati)
VALUES(8,'Bibloteca Centrala','Constanta',0788888888,7);

INSERT INTO BIBLIOTECA_PROIECT (id_biblioteca, denumire_biblioteca, adresa_biblioteca, telefon_biblioteca, numar_angajati)
VALUES(9,'Bibloteca Universitatii','Galati',0799999999,8);

INSERT INTO BIBLIOTECA_PROIECT (id_biblioteca, denumire_biblioteca, adresa_biblioteca, telefon_biblioteca, numar_angajati)
VALUES(10,'Bibloteca Raionala','Pitesti',0700000000,9);



INSERT INTO CLIENTI_PROIECT (id_client, nume_client, prenume_client, telefon_client, imprumuturi_anterioare)
VALUES(1,'Georgescu','Cosmin',0711111111, 1);

INSERT INTO CLIENTI_PROIECT (id_client, nume_client, prenume_client, telefon_client, imprumuturi_anterioare)
VALUES(2,'Ionescu','Maria',0722222222, 2);

INSERT INTO CLIENTI_PROIECT (id_client, nume_client, prenume_client, telefon_client, imprumuturi_anterioare)
VALUES(3,'Popescu','Ion',0733333333, 3);

INSERT INTO CLIENTI_PROIECT (id_client, nume_client, prenume_client, telefon_client, imprumuturi_anterioare)
VALUES(4,'Dumitrescu','Elena',0744444444, 2);

INSERT INTO CLIENTI_PROIECT (id_client, nume_client, prenume_client, telefon_client, imprumuturi_anterioare)
VALUES(5,'Stoian','Ana',0755555555, 3);

INSERT INTO CLIENTI_PROIECT (id_client, nume_client, prenume_client, telefon_client, imprumuturi_anterioare)
VALUES(6,'Mateescu','Alexandru',0766666666, 4);

INSERT INTO CLIENTI_PROIECT (id_client, nume_client, prenume_client, telefon_client, imprumuturi_anterioare)
VALUES(7,'Tanase','Andreea',0777777777, 3);

INSERT INTO CLIENTI_PROIECT (id_client, nume_client, prenume_client, telefon_client, imprumuturi_anterioare)
VALUES(8,'Constantinescu','Raluca',0788888888, 1);

INSERT INTO CLIENTI_PROIECT (id_client, nume_client, prenume_client, telefon_client, imprumuturi_anterioare)
VALUES(9,'Branescu','Cristian',0799999999, 4);

INSERT INTO CLIENTI_PROIECT (id_client, nume_client, prenume_client, telefon_client, imprumuturi_anterioare)
VALUES(10,'Alexandru','Chipes',0799999999, 4);




INSERT INTO ANGAJATI_PROIECT (id_angajat, id_biblioteca, nume_angajat, salariu, functie, data_angajare)
VALUES(1,1,'Cristian',2000, 'librar',TO_DATE('1.01.2000','DD.MM.YYYY') );

INSERT INTO ANGAJATI_PROIECT (id_angajat, id_biblioteca, nume_angajat, salariu, functie, data_angajare)
VALUES(2,2,'Ionut',2100,'carturar', TO_DATE('2.02.2002','DD.MM.YYYY'));

INSERT INTO ANGAJATI_PROIECT (id_angajat, id_biblioteca, nume_angajat, salariu, functie, data_angajare)
VALUES(3,3,'Ciprian',2200,'paznic', TO_DATE('22.12.2002','DD.MM.YYYY'));

INSERT INTO ANGAJATI_PROIECT (id_angajat, id_biblioteca, nume_angajat, salariu, functie, data_angajare)
VALUES(4,4,'Ovidiu',2300,'femeie de serviciu', TO_DATE('11.04.2003','DD.MM.YYYY'));

INSERT INTO ANGAJATI_PROIECT (id_angajat, id_biblioteca, nume_angajat, salariu, functie, data_angajare)
VALUES(5,5,'Andrei',2400,'casier', TO_DATE('17.06.2003','DD.MM.YYYY') );

INSERT INTO ANGAJATI_PROIECT (id_angajat, id_biblioteca, nume_angajat, salariu, functie, data_angajare)
VALUES(6,6,'Laurentiu',2500,'secretar', TO_DATE('21.10.2005','DD.MM.YYYY'));

INSERT INTO ANGAJATI_PROIECT (id_angajat, id_biblioteca, nume_angajat, salariu, functie, data_angajare)
VALUES(7,7,'Cosmin',2600,'librar', TO_DATE('25.11.2005','DD.MM.YYYY'));

INSERT INTO ANGAJATI_PROIECT (id_angajat, id_biblioteca, nume_angajat, salariu, functie, data_angajare)
VALUES(8,8,'Mihail',2700,'carturar', TO_DATE('31.12.2005','DD.MM.YYYY'));

INSERT INTO ANGAJATI_PROIECT (id_angajat, id_biblioteca, nume_angajat, salariu, functie, data_angajare)
VALUES(9,9,'Mihai',2800,'supraveghetor', TO_DATE('21.04.2007','DD.MM.YYYY'));


INSERT INTO ANGAJATI_PROIECT (id_angajat, id_biblioteca, nume_angajat, salariu, functie, data_angajare)
VALUES(11,10,'Branescu',2900,'director', TO_DATE('7.05.2009','DD.MM.YYYY'));



INSERT INTO STOC_PROIECT (id_carte, titlu_carte, gen_carte, autor_carte)
VALUES(1000,'Branescu','Cristian',0799999999, 4);





INSERT INTO STOC_PROIECT (id_carte, titlu_carte, gen_carte, autor_carte)
VALUES(1000, 'One Hundred Years of Solitude', 'Fiction', 'Gabriel García Márquez');

INSERT INTO STOC_PROIECT (id_carte, titlu_carte, gen_carte, autor_carte)
VALUES(1001, 'Pride and Prejudice', 'Romance', 'Jane Austen');

INSERT INTO STOC_PROIECT (id_carte, titlu_carte, gen_carte, autor_carte)
VALUES(1002, 'The Great Gatsby', 'Fiction', 'F. Scott Fitzgerald');

INSERT INTO STOC_PROIECT (id_carte, titlu_carte, gen_carte, autor_carte)
VALUES(1003, 'To Kill a Mockingbird', 'Fiction', 'Harper Lee');

INSERT INTO STOC_PROIECT (id_carte, titlu_carte, gen_carte, autor_carte)
VALUES(1004, 'The Catcher in the Rye', 'Fiction', 'J.D. Salinger');

INSERT INTO STOC_PROIECT (id_carte, titlu_carte, gen_carte, autor_carte)
VALUES(1005, 'The Alchemist', 'Fiction', 'Paulo Coelho');

INSERT INTO STOC_PROIECT (id_carte, titlu_carte, gen_carte, autor_carte)
VALUES(1006, 'The Lord of the Rings', 'Fantasy', 'J.R.R. Tolkien');

INSERT INTO STOC_PROIECT (id_carte, titlu_carte, gen_carte, autor_carte)
VALUES(1007, 'The Harry Potter Series', 'Fantasy', 'J.K. Rowling');

INSERT INTO STOC_PROIECT (id_carte, titlu_carte, gen_carte, autor_carte)
VALUES(1008, 'The Da Vinci Code', 'Thril
ler', 'Dan Brown');

INSERT INTO STOC_PROIECT (id_carte, titlu_carte, gen_carte, autor_carte)
VALUES(1009, 'The Murder of Roger Ackroyd', 'Mystery', 'Agatha Christie');



INSERT INTO CARTE_IMPRUMUTATA (id_biblioteca, id_client, id_angajat, id_carte, data_imprumut, data_returnare)
VALUES(2,2,1,1000,TO_DATE('21.04.2007','DD.MM.YYYY'), TO_DATE('27.05.2007','DD.MM.YYYY'));

INSERT INTO CARTE_IMPRUMUTATA (id_biblioteca, id_client, id_angajat, id_carte, data_imprumut, data_returnare)
VALUES(5,3,4,1001,TO_DATE('02.01.2000','DD.MM.YYYY'), TO_DATE('01.03.2000','DD.MM.YYYY'));

INSERT INTO CARTE_IMPRUMUTATA (id_biblioteca, id_client, id_angajat, id_carte, data_imprumut, data_returnare)
VALUES(6,2,6,1002,TO_DATE('05.06.2002','DD.MM.YYYY'), TO_DATE('01.08.2002','DD.MM.YYYY'));

INSERT INTO CARTE_IMPRUMUTATA (id_biblioteca, id_client, id_angajat, id_carte, data_imprumut, data_returnare)
VALUES(1, 3, 2, 1003, TO_DATE('03.09.2003','DD.MM.YYYY'), TO_DATE('01.11.2003','DD.MM.YYYY'));

INSERT INTO CARTE_IMPRUMUTATA (id_biblioteca, id_client, id_angajat, id_carte, data_imprumut, data_returnare)
VALUES(8,3,5,1004,TO_DATE('07.12.2004','DD.MM.YYYY'), TO_DATE('01.02.2005','DD.MM.YYYY'));

INSERT INTO CARTE_IMPRUMUTATA (id_biblioteca, id_client, id_angajat, id_carte, data_imprumut, data_returnare)
VALUES(9,4,9,1005,TO_DATE('04.03.2006','DD.MM.YYYY'), TO_DATE('01.05.2006','DD.MM.YYYY'));

INSERT INTO CARTE_IMPRUMUTATA (id_biblioteca, id_client, id_angajat, id_carte, data_imprumut, data_returnare)
VALUES(4,7,7,1006,TO_DATE('06.06.2007','DD.MM.YYYY'), TO_DATE('01.08.2007','DD.MM.YYYY'));

INSERT INTO CARTE_IMPRUMUTATA (id_biblioteca, id_client, id_angajat, id_carte, data_imprumut, data_returnare)
VALUES(10,8,8,1007,TO_DATE('09.09.2008','DD.MM.YYYY'), TO_DATE('01.11.2008','DD.MM.YYYY'));

INSERT INTO CARTE_IMPRUMUTATA (id_biblioteca, id_client, id_angajat, id_carte, data_imprumut, data_returnare)
VALUES(7,5,5,1008,TO_DATE('02.01.2009','DD.MM.YYYY'), TO_DATE('01.03.2009','DD.MM.YYYY'));

INSERT INTO CARTE_IMPRUMUTATA (id_biblioteca, id_client, id_angajat, id_carte, data_imprumut, data_returnare)
VALUES(2,6,6,1009,TO_DATE('05.06.2010','DD.MM.YYYY'), TO_DATE('01.08.2010','DD.MM.YYYY'));



ALTER TABLE STOC_PROIECT rename to STOC_PROIECT_BAZE_DE_DATE;

ALTER TABLE STOC_PROIECT_BAZE_DE_DATE rename to STOC_PROIECT;



ALTER TABLE ANGAJATI_PROIECT
ADD varsta_angajat number(4);

ALTER TABLE ANGAJATI_PROIECT
DROP COLUMN varsta_angajat; 


UPDATE ANGAJATI_PROIECT SET salariu=4000 WHERE id_angajat=11;

UPDATE ANGAJATI_PROIECT SET nume_angajat='BOSS' WHERE id_angajat=11;

UPDATE ANGAJATI_PROIECT SET salariu=salariu+200 WHERE extract(year from data_angajare) <= 2005;

UPDATE BIBLIOTECA_PROIECT SET denumire_biblioteca='Biblioteca din centru' WHERE adresa_biblioteca='Pitesti';




DROP TABLE CARTE_IMPRUMUTATA;
FLASHBACK TABLE CARTE_IMPRUMUTATA TO BEFORE DROP;




SELECT id_angajat, id_biblioteca, nume_angajat, salariu, functie, data_angajare FROM ANGAJATI_PROIECT;

SELECT * FROM angajati_proiect
WHERE functie like 'librar';

SELECT * FROM CARTE_IMPRUMUTATA 
WHERE data_returnare > to_date ('01.07.2005','dd.mm.yyyy');

SELECT * FROM CARTE_IMPRUMUTATA 
WHERE EXTRACT(YEAR FROM data_returnare)=2006;

SELECT id_biblioteca, UPPER(denumire_biblioteca), LOWER(adresa_biblioteca) FROM biblioteca_proiect
WHERE numar_angajati=3;


SELECT c.id_client, count(*)
FROM carte_imprumutata ci , clienti_proiect c
WHERE c.id_client = ci.id_client
group by c.id_client;


SELECT id_client, nume_client, LENGTH(nume_client), SUBSTR(nume_client, 1, 1) AS INITIALA
FROM CLIENTI_PROIECT
WHERE id_client>5;


SELECT * FROM ANGAJATI_PROIECT 
WHERE id_angajat IN (SELECT id_angajat
FROM angajati_proiect MINUS
SELECT id_angajat
FROM carte_imprumutata);


SELECT id_angajat, nume_angajat, salariu
FROM ANGAJATI_PROIECT
WHERE salariu between 2200 and 2300
union
select id_angajat, nume_angajat, salariu
from ANGAJATI_PROIECT 
WHERE salariu between 2700 and 3000;



10-sa se afiseze din ce biblioteci s au imprumutat cartile
select  denumire_biblioteca
FROM biblioteca_proiect 
where id_biblioteca in ( select id_biblioteca from biblioteca_proiect
INTERSECT 
select id_biblioteca from CARTE_IMPRUMUTATA);


SELECT nume_angajat,
CASE WHEN salariu> 2500 then 1
Else 0
End flag_sal
FROM ANGAJATI_PROIECT;


select nume_angajat, salariu,
case when salariu < 2700 then salariu+ salariu * .15
 else salariu + salariu * .05
end "salariul marit"
from angajati_proiect;



Select nume_client, imprumuturi_anterioare, imprumuturi_anterioare + 1 as "imprumuturi modificate"
from clienti_proiect 
where imprumuturi_anterioare > 3;








14-sa se faca o catalogare a imprumuturilor avute de clienti astfel incat,
1= imprumuturi putine, 4=imprumuturi multe, iar celalalte sunt imprumuturi medii
select nume_client,
case imprumuturi_anterioare when 1 then 'imprumuturi putine'
when 4 then 'imprumuturi multe'
else 'imprumuturi medii' end
from clienti_proiect;





select nume_angajat,functie, salariu,
decode((functie), 'librar', salariu + salariu * 0.15, 'carturar', salariu + salariu * 0.20)
from angajati_proiect;








select nume_client from clienti_proiect where lower(prenume_client) like '%es%'
union
select nume_client from clienti_proiect where lower(prenume_client) like '%an%';









SELECT DISTINCT data_imprumut from carte_imprumutata
order by data_imprumut;



select nume_angajat,salariu, data_angajare
from angajati_proiect
where data_angajare between (to_date('01.01.2003','dd.mm.yyyy')) and (to_date( '01.01.2005','dd.mm.yyyy') )
order by nume_angajat asc;


select d.nume_client, d.prenume_client, to_char(avg(d.imprumuturi_anterioare)) from clienti_proiect d
group by d.nume_client, d.prenume_client order by avg(d.imprumuturi_anterioare) desc;


select * from angajati_proiect where salariu between 2200 and 2900
minus
select * from angajati_proiect where salariu in(2400,2500);

create sequence seq_angajati_proiect
start with 1
increment by 1
maxvalue 100000000
nocycle
nocache;

ALTER SEQUENCE seq_angajati_proiect increment by 100;
Alter sequence seq_angajati_proiect maxvalue 2000;


Select * from user_sequences;


Drop sequence seq_angajati_proiect



create or replace view imprumuturi
as select nume_client, imprumuturi_anterioare from clienti_proiect
where imprumuturi_anterioare > 3;

Create synonym ser for imprumuturi;

create or replace view vw_angajati
as
select nume_angajat
from angajati_proiect
where salariu > (select avg(salariu) from angajati_proiect)



create index index_clienti_proiect on clienti_proiect(nume_client);


Create synonym carte_sinonim for carte_imprumutata;

