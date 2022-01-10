
/*==================================
       TABLO OLUŞTURMA(CRUD-- create)
=====================================*/
use sys;
Create table student
(
id varchar(4), 
name varchar(25),
age int 
);
INSERT INTO student VALUES('1001', 'MEHMET ALİ', 25);
INSERT INTO student VALUES('1002', 'AYSE YILMAZ', 34);
INSERT INTO student VALUES('1003', 'JOHN STAR', 56);
INSERT INTO student VALUES('1004', 'MARY BROWN', 17);

/*==================================
      Parçalı veri Girişi
=====================================*/
INSERT INTO student(name,age) VALUES('şenel',40);
/*==================================
      TABLODAN VERİ SORGULAMA
=====================================*/
 select * from student;
 
 /*==================================
            TABLO SİLME CRUP DROP
=====================================*/

DROP TABLE urunler;
-- concat 
create table customer (
musteri_no int,
ad VARCHAR(22),
soyad VARCHAR(25),
sehir varchar(45),
cinsiyet varchar(15),
puan int
);
INSERT INTO customer VALUES(111,'ebru', 'akar','denizli','kadin',78);
INSERT INTO customer VALUES(222,'ayse', 'kara','ankara','kadin',90);
INSERT INTO customer VALUES(333,'ali','gel','istanbul','erkek',66);
INSERT INTO customer VALUES(444, 'mehmet','okur','mus','erkek',98);

select concat('Adınız Soyadınız :',ad,' ',soyad) ad_soyad from customer;
select concat('Müşteri No :',musteri_no,'.) ',ad,' ',soyad) ad_soyad,sehir ,cinsiyet,puan from customer;

-- /*********  length-left-right (String functions) **************/
select ad ,length(ad),soyad,length(soyad)
from  customer;

select ad , left(ad,1),soyad,right(soyad,1)
from customer;

select ad,soyad, concat(left(ad,1),'.',left(soyad,1),'.')
from customer;

-- soru:  5 ve 5 karakterden büyük olan isimleri MORRIS -> MRS şeklinde yazdırınız.
-- yani 1. , 3. ve 5. karakterleri alınız

select ad ,concat(left(ad,1),right(left(ad,3),1) ,right(left(ad,5),1))
from customer
where left()>5;