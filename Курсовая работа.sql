create database decoration;

create type colour as enum('красный', 'зеленый', 'синий', 'белый', 'желтый');

create table informaciya(       /*ифнормация*/
id int,
name character varying,
colour colour,
provider character varying,
manufacturer character varying,
date_receipt date,
date_sale date,
count int,
price int,
constraint "provider_info" foreign key (provider) references provider(name_provider),
constraint "manufacturer_info" foreign key (manufacturer) references manufacturer(name_manufacture)
);

create table provider(   /*поставщик*/
id_provider int,
name_provider character varying,
country_provider character varying,
constraint "name_provider" primary key (name_provider),
constraint "provider_country" foreign key (country_provider) references country(name_country)
);

create table manufacturer( /*производитель*/
id_manufacture int,
name_manufacture character varying,
country_manufacture character varying,
constraint "Name_Manufacturer" primary key (name_manufacture),
constraint "country_manufacturer" foreign key (country_manufacture) references country(name_country)
);

create table country(   /*страны*/
id_country int,
name_country character varying,
constraint "Country" primary key (name_country)
);

insert into country values (1, 'Россия');
insert into country values (2, 'Германия');
insert into country values (3, 'Китай');
insert into country values (4, 'Америка');

insert into manufacturer values (1, 'Black Box', 'Германия');
insert into manufacturer values (2, 'Ариель', 'Россия');
insert into manufacturer values (3, 'Холлидей', 'Россия');
insert into manufacturer values (4, 'Ели PENERI', 'Китай');
insert into manufacturer values (5, 'Царь Елка', 'Америка');
insert into manufacturer values (6, 'Фабрика Сувениров', 'Россия');
insert into manufacturer values (7, 'Green Trees', 'Германия');
insert into manufacturer values (8, 'LowCost', 'Америка');
insert into manufacturer values (9, 'Extrago', 'Китай');
insert into manufacturer values (10, 'Иней', 'Россия');
insert into manufacturer values (11, 'Крона', 'Россия');
insert into manufacturer values (12, 'Форфоровая мануфактура', 'Китай');

insert into provider values (1, 'Урал', 'Россия');
insert into provider values (2, 'Barinson', 'Америка');
insert into provider values (3, 'УСПЕХ', 'Германия');
insert into provider values (4, 'НТО Лазер', 'Америка');
insert into provider values (5,'Albatoy','Китай');
insert into provider values (6,'Текстиль','Россия');
insert into provider values (7,'Heops','Германия');
insert into provider values (8,'Balipaffos','Германия');
insert into provider values (9,'Europa','Германия');
insert into provider values (10,'Busymotik','Китай');
insert into provider values (11,'Стандарт','Россия');
insert into provider values (12,'РИТ','Россия');

insert into informaciya values (1, 'Венок', 'зеленый', 'Урал', 'Ариель', '2016-08-11', '2018-03-28', 10, 100);
insert into informaciya values (2, 'Венок', 'синий', 'УСПЕХ', 'Холлидей', '2015-03-18', '2018-04-13', 3, 150);
insert into informaciya values (3, 'Олень', 'белый', 'НТО Лазер', 'Царь Елка', '2014-03-14','2015-09-11', 11, 20);
insert into informaciya values (4, 'Олень', 'синий', 'Heops', 'Green Trees', '2015-05-11', '2019-10-13', 45, 10);
insert into informaciya values (5, 'Девочка и снеговик', 'белый', 'Heops', 'Green Trees', '2016-11-11', '2017-10-28', 3, 15);
insert into informaciya values (6, 'Новогоднее панно', 'красный', 'Albatoy', 'Иней', '2014-12-12', '2018-11-13', 100, 48);
insert into informaciya values (7, 'Гирлянда', 'красный', 'Europa', 'Крона', '2012-10-11', '2016-12-28', 142, 13);
insert into informaciya values (8, 'Мешок-Сапожки', 'белый', 'РИТ', 'Форфоровая мануфактура', '2014-04-11', '2018-09-13', 201, 19);
insert into informaciya values (9, 'Новогодний дождь', 'синий', 'Стандарт', 'LowCost', '2013-01-11', '2017-11-11', 14, 56);
insert into informaciya values (10, 'Новогодняя мишура', 'синий', 'УСПЕХ', 'Фабрика Сувениров', '2015-04-07', '2018-10-11', 10, 111);
insert into informaciya values (11, 'Новогодняя мишура', 'белый', 'НТО Лазер', 'Extrago', '2016-11-24', '2018-10-12', 11, 131);
insert into informaciya values (12, 'Новогодняя мишура', 'зеленый', 'Balipaffos', 'Black Box', '2015-04-13', '2017-11-17', 14, 40);
insert into informaciya values (13, 'Елочка', 'зеленый', 'Busymotik', 'Ели PENERI', '2014-03-12', '2018-02-11', 113, 50);
insert into informaciya values (14, 'Колокольчик', 'белый', 'Текстиль', 'Крона', '2012-11-11', '2017-02-13', 38, 10);
insert into informaciya values (15, 'Колокольчик', 'синий', 'Barinson', 'Extrago', '2015-03-11', '2018-05-02', 115, 150);
insert into informaciya values (16, 'Колакольчик', 'зеленый', 'Стандарт', 'LowCost', '2015-05-29', '2018-04-15', 4, 200);
insert into informaciya values (17, 'Верхушка Злата', 'желтый', 'Albatoy', 'Ели PENERI', '2013-04-13', '2016-11-06', 500, 380 );
insert into informaciya values (18, 'Стеклянный елочный шар', 'желтый', 'НТО Лазер', 'Green Trees', '2012-11-14', '2019-10-04', 378, 460);
insert into informaciya values (19, 'Стеклянный елочный шар', 'красный', 'НТО Лазер', 'Green Trees', '2012-11-14', '2019-10-04', 350, 460);
insert into informaciya values (20, 'Стеклянный елочный шар', 'желтый', 'НТО Лазер', 'Green Trees', '2012-11-14', '2019-10-04', 378, 460);
insert into informaciya values (21, 'Стеклянный елочный шар', 'синий', 'УСПЕХ', 'Фабрика Сувениров', '2012-11-14', '2019-10-04', 378, 460);
insert into informaciya values (22, 'Мышка с сыром', 'желтый', 'Europa', 'Иней', '2015-11-14', '2017-07-04', 122, 50);
insert into informaciya values (23, 'Мышка с сыром', 'красный', 'УСПЕХ', 'Фабрика Сувениров', '2015-04-11', '2018-10-11', 100, 14);
insert into informaciya values (24, 'Мышка с сыром', 'синий', 'Busymotik', 'Крона', '2013-02-27', '2017-10-02', 24, 18);
insert into informaciya values (25, 'Красивый мышонок', 'синий', 'Balipaffos', 'Холлидей', '2011-09-21', '2013-12-11', 73, 17);
insert into informaciya values (26, 'Красивый мышонок', 'желтый', 'Урал', 'Extrago', '2014-04-12', '2017-12-03', 86, 24);
insert into informaciya values (27, 'Сувенирный новогодний шар', 'красный', 'Barinson', 'Иней', '2014-07-16', '2017-12-30', 88, 300);
insert into informaciya values (28, 'Сувенирный новогодний шар', 'синий', 'Barinson', 'Царь Елка', '2010-09-16', '2014-12-16', 97, 320);

/*сотировка по дате выпуска*/
create or replace function sort_release(varchar)
returns table("Название" varchar,"Дата выпуска" date, "Поставщик" varchar, "Цена" int)
as
$$
begin
return query
select name, date_receipt, provider, price from informaciya
inner join provider on provider.name_provider = informaciya.provider
where name = $1
order by date_receipt asc ;
end;
$$ language 'plpgsql';

/*сортировка по поставщику*/
create or replace function sort_provider(varchar)
returns table("Название" varchar,"Дата выпуска" date, "Поставщик" varchar, "Цена" int)
as
$$
begin
return query
select name, date_receipt, provider, price FROM informaciya
inner join provider on provider.name_provider = informaciya.provider
where name = $1
order by provider ASC;
end;
$$ language 'plpgsql';

/*сортировка по цене*/
create or replace function sort_price(VARCHAR)
returns table("Название" varchar,"Дата выпуска" date, "Поставщик" varchar, "Цена" int)
as
$$
begin
return query
select name, date_receipt, provider, price FROM informaciya
inner join provider on provider.name_provider = informaciya.provider
where name = $1
order by price asc;
end;
$$ language 'plpgsql';

/*самый дорогой*/
create or replace function most_expensive()
returns table("Имя" varchar, "Цвет" colour, "Цена" INT)
as
$$
declare pr int;
begin
pr := max(informaciya.price) from "informaciya";
return query
select name, colour, price from "informaciya"
where informaciya.price=pr;
end;
$$ language 'plpgsql';

/*самый дешевый*/
create or replace function most_cheapest()
returns table("Имя" varchar, "Цвет" colour, "Цена" int)
as
$$
declare pr int;
begin
pr := min(informaciya.price) from "informaciya";
return query
select name, colour, price from "informaciya"
where informaciya.price=pr;
end;
$$ language 'plpgsql';

/*средняя цена по каждому типу*/
create or replace function avg_price_on_type()
returns table("Имя" varchar, "Средняя цена" int)
as
$$
begin
return query
select name, avg(price)::int as avgprice from informaciya
group by name;
end;
$$ language 'plpgsql';

/*средняя цена в целом*/
create or replace function avg_price()
returns table("средняя цена" int)
as
$$
begin
return query
select avg(price)::int from informaciya;
end;
$$ language 'plpgsql';

/*дороже 20р или любой другой цены*/
create or replace function search_on_price(int)
returns table("Имя" varchar, "цена" int)
as
$$
begin
return query
select name, price FROM informaciya
where price >=$1
order by price;
end;
$$ language 'plpgsql';

/*доля данного производителя от всех изделий*/
create or replace function percent_of_manufacturer(in a varchar)
returns real
as
$$
declare p real;
begin
select
((select sum(count)*100 from informaciya inner join manufacturer m on informaciya.manufacturer = m.name_manufacture
where name_manufacture = a ) / (select count(count) from informaciya)) into p;
return p;
end;
$$ language 'plpgsql';

/*С заданной датой выпуска*/
create or replace function release_date(date)
returns table("Имя" varchar, "Дата" date)
as
$$
begin
return query
select name, date_receipt from informaciya where date_receipt=$1;
end;
$$ language 'plpgsql';

/*дата продажи в заданных пределах для заданного проиводителя*/
create or replace function date_of_manufacturer(in a date, in b date, in p character varying)
returns table("Имя" character varying, "Дата" date, "Проиводитель" character varying, "Цена" int)
as
$$
begin
return query
select name, date_sale, name_manufacture,price
from informaciya inner join manufacturer m on informaciya.manufacturer = m.name_manufacture
where name_manufacture = p and date_sale >= a and date_sale <= b
order by date_sale asc;
return;
end;
$$ language 'plpgsql';

/*дата продажи в заданных пределах*/
create or replace function date_of_manufacturer_all(in a date, in b date)
returns table("Имя" character varying, "Дата" date, "Проиводитель" character varying, "Цена" int)
as
$$
begin
return query
select name, date_sale, name_manufacture,price
from informaciya inner join manufacturer m on informaciya.manufacturer = m.name_manufacture
where date_sale >= a and date_sale <= b
order by date_sale asc;
return;
end;
$$ language 'plpgsql';

/*доля от стоимости*/
create or replace function percent_of_count(in a int, in b int)
returns real
as
$$
declare p real;
begin
select (select sum(count)*100 from informaciya
where price >= a AND price <= b) / (select sum(count) from informaciya) into p;
return p;
end;
$$ language 'plpgsql';

/*доля от поставщиков*/
create or replace function percent_of_count_of_provider(in a varchar)
returns real
as
$$
declare p real;
begin
select ((select sum(count)*100 from informaciya inner join provider p2 on informaciya.provider = p2.name_provider
where name_provider = a) / (select count(name_provider) from provider)) into p;
return p;
end;
$$ language 'plpgsql';

/*заданного производителя*/
create or replace function toy_of_manufacturer(in manufacturerOne character varying)
returns table("Имя" character varying, "Дата выпуска" date, "Проиводитель" character varying, "Цена" int)
as
$$
begin
return query
select name, date_receipt, name_manufacture, price
from informaciya inner join manufacturer m on informaciya.manufacturer = m.name_manufacture
where name_manufacture = manufacturerOne
order by name asc;
return;
end;
$$ language 'plpgsql';

/*отзаданного поставщика, чья стоимость больше заданной*/
create or replace function toys_from_provider_and_price(in providerOne character varying, in priceOne int)
returns table("Имя" character varying, "Поставщик" character varying, "Цена" int) AS
$$
begin
return query
select name, name_provider, price
from informaciya inner join provider p on informaciya.provider = p.name_provider
where name_provider = providerOne and price > priceOne
order by name asc;
return;
end;
$$ language 'plpgsql';

/*доля новогодних урашений за определенный период от общего времени продаж*/
create or replace function percent_of_count_of_date(in date1 date, in date2 date)
returns real
as
$$
declare p real; dateStart date; dateEnd date;
begin
dateStart := min(date_sale) from informaciya;
dateEnd := max(date_sale) from informaciya;
select
((SELECT sum(count)*100 FROM informaciya where date_sale >= date1 and date_sale <= date2) / (SELECT sum(count) FROM informaciya where date_sale >= dateStart and date_sale <= dateEnd)) into p;
return p;
end;
$$ language 'plpgsql';

/*от заданного поставщика, чья стоимость больше, чем средняя стоимость украшений из определенной страны*/
create or replace function toys_from_provider_and_avg_price(in providerOne varchar, in countryOne varchar)
returns table ("Имя" varchar,"Поставщик" varchar, "Страна" varchar, "Цена" int)
as
$$
declare p real;
begin
p := avg(price) from informaciya inner join provider p2 on informaciya.provider = p2.name_provider inner join country c on p2.country_provider = c.name_country
where name_country = countryOne;
return query
select name, name_provider, name_country, price from informaciya inner join provider p3 on informaciya.provider = p3.name_provider inner join country c2 on p3.country_provider = c2.name_country
where name_provider = providerOne and price > p;
end;
$$ language 'plpgsql';

/*доля дорогих, поступивших за определенный период*/
create or replace function percent_of_interval(in priceOne int, in date1 date, in date2 date)
returns real
as
$$
declare p real;
begin
select
((select count(name)*100 FROM informaciya
where price > priceOne and date_receipt >= date1 and date_receipt <= date2) / (select count(name) from informaciya)) into p;
return p;
end;
$$ language 'plpgsql';

/*средняя стоимость за за определенный промежуток*/
create or replace function avg_price_of_interval(in date1 date, in date2 date)
returns real
as
$$
declare p real;
begin
select avg(price) from informaciya
where date_sale >= date1 and date_sale <= date2 into p;
return p;
end;
$$ language 'plpgsql';

/*цена выше, чем средня цена заданного производителя*/
create or replace function avg_price_of_manufacturer(in manufacturerOne varchar)
returns table ("Имя" varchar, "Производитель" varchar, "Цена" int)
as
$$
declare p real;
begin
p:= avg(price) from informaciya inner join manufacturer m on informaciya.manufacturer = m.name_manufacture
where manufacturerOne = name_manufacture;
return query
select name, name_manufacture, price from informaciya inner join manufacturer m2 on informaciya.manufacturer = m2.name_manufacture
where price > p;
end;
$$ language 'plpgsql';



---------------------------------------------------Test-----------------------------------------------------------------
select * from sort_release('Мышка с сыром');
select * from sort_provider('Мышка с сыром');
select * from sort_price('Мышка с сыром');
select * from most_expensive();
select * from most_cheapest();
select * from avg_price_on_type();
select * from avg_price();
select * from search_on_price(20);
select * from percent_of_manufacturer('Ариель');
select * from release_date('2015-03-18');
select * from date_of_manufacturer('2013-12-12', '2018-12-12', 'Green Trees');
select * from date_of_manufacturer_all('2013-12-12', '2018-12-12');
select * from percent_of_count(100, 200);
select * from percent_of_count_of_provider('РИТ');
select * from toy_of_manufacturer('LowCost');
select * from toys_from_provider_and_price( 'Стандарт', 100);
select * from percent_of_count_of_date('2014-01-01', '2017-12-12');
select * from percent_of_interval(40, '2012-01-01', '2015-12-12');
select * from avg_price_of_interval('2014-01-01', '2017-12-12');