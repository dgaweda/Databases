SET client_encoding to 'UTF-8'
create language plpgsql;

create table koniec_kariery(
  ID_PILKARZ SERIAL PRIMARY KEY,
  IMIE VARCHAR(16) NOT NULL,
  NAZWISKO VARCHAR(32) NOT NULL,
  POZYCJA VARCHAR(32) NOT NULL,
  NARODOWOSC VARCHAR(32) NOT NULL,
  klub_id int
);

create or replace function delete_add()
  returns trigger as $$

  begin insert into koniec_kariery(ID_PILKARZ, IMIE, NAZWISKO, POZYCJA, NARODOWOSC, KLUB_ID)
  values(old.ID_PILKARZ, old.IMIE, old.NAZWISKO, old.POZYCJA, old.NARODOWOSC, old.KLUB_ID);


return new;
end;
$$ language 'plpgsql';

create trigger delete
  after delete on pilkarz
  for each row
  execute procedure delete_add();
