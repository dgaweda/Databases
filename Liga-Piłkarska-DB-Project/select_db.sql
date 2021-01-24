-- zlaczenie
select klub_nazwa, rok_utworzenia, nazwa from
stadion inner join klub on klub.klub_nazwa = stadion.nalezy_do;

-- ilosc zawodnikow  kazdym klubie
select klub_nazwa, count(klub_id) as liczba_zawodnikow
from pilkarz inner join klub on klub.id_klub = pilkarz.klub_id
group by klub_nazwa
order by klub_nazwa;

-- ilosc zawodnikow z poszczegolnych panstw
select narodowosc, count(imie) from pilkarz
group by NARODOWOSC
order by narodowosc;

--  wyswietlenie klubów ktore grały mecz
--  miedzy 5 a 10 dniem lutego

select data, klub_nazwa from klub
inner join mecz on mecz.id_mecz = klub.id_meczu
where data between '2018-02-05' and '2018-02-10';

--  wyswietlenie listy klubow utworzonych przed 1900rokiem oraz ich stadionów
select klub_nazwa,nazwa, kraj from klub
inner join stadion on stadion.nalezy_do = klub.klub_nazwa
where rok_utworzenia<1900;

-- wyswietlenie wszystkich obroncow
select imie, nazwisko from pilkarz where pozycja LIKE '%OBRONCA%';

 -- wyswietlenie klubów ktore nie graja meczow jako GOSCIE
 select klub_nazwa from klub where klub_nazwa
  not in (select goscie from mecz);


-- wyswietlenie nazw klubow ktore graja mecz jako gospodarze
select klub_nazwa from klub
where klub_nazwa in(
select gospodarze from mecz
);

-- wyswietlenie nazw klubow ktore graja mecz jako goscie
select klub_nazwa from klub
where klub_nazwa in(
select goscie from mecz
);

-- wyswietla kluby nieposiadajace stadionów
select klub_nazwa from klub where klub_nazwa not in(
  select nalezy_do from stadion
);

-- wyswietla nazwy stadionow na ktorych beda rozgrywane mecze
select nazwa from stadion
where
numer in(
  select numer_stadion from mecz
);

-- wyswietla trenera ktory nie trenuje zadnego klubu
select imie, nazwisko from trener where id not in(
  select id_trener from klub where id_trener is not null
);

-- wyswietla kluby ktore nie maja trenera
select klub_nazwa from klub where id_trener IS NULL;

-- zmiana imienia i nazwiska sedziego
update arbiter set imie = 'TOMASZ', nazwisko = 'RYBAK' where id_arbiter = 5;

-- usuniecie pilkarzy o imieniu JAKUB
delete from pilkarz where imie = 'JAKUB';

-- oblicza ile lat minęło od czasu powstania klubów
select rok_utworzenia, klub_nazwa,  2018 - rok_utworzenia as wiek
from klub;

-- oblicza ile dni temu były poszczegolne mecze
selecT gospodarze,goscie,data, current_date  - DATA from mecz;
