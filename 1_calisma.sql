
use sys;
create table og_bilgiler(
id CHAR(5) PRIMARY KEY,
name varchar(45),
adres varchar(100),
sinav_notu int
);

insert into og_bilgiler values (1,'Aysel Varol','uzun pinar caddesi no 50',100);
insert into og_bilgiler values(2,'Aytunç Can','beylükdüzü İSTANBUL',80);
insert into og_bilgiler values(3,'Aybuke Balık','üsküdar İstanbul',70);
insert into og_bilgiler values(4,'Ayberk Akıllı','Cennet İstanbul',85);
insert into og_bilgiler values(5,'Mustafa Can','balgat Ankara',50);
insert into og_bilgiler values(6,'Salih Mercan','balgat Ankara',50);
insert into og_bilgiler values(7,'ayberk','balgat Ankara',70);


select *from og_bilgiler;

select * from og_bilgiler where sinav_notu >80; -- notu 80 dan büyük olanlar
select * from og_bilgiler where id>3;-- id 3 den büyük olanlar
select * from og_bilgiler where name like '%t%';-- içinde t harfi geçen
select * from og_bilgiler where not name like '_y%';-- ikinci harfinde "y" olmayanlar
select * from og_bilgiler where regexp_like (adres,'Ankara','c');
select * from og_bilgiler where sinav_notu like '___' ; -- sınav notu üç basamaklı olanlar
-- select * from og_bilgiler where regexp_like (name ,'m[a-zA-Z][a-zA-Z]n$','c');
select * from og_bilgiler where name like'm%n'; -- başlangıc m sonu n ile bitenler.
select name,sinav_notu from og_bilgiler where name like'a%' and sinav_notu>69; -- a harfiyle başlayan ve notu 69 dan büyük olanlar
select name from og_bilgiler where name like '[D-M]%';
 