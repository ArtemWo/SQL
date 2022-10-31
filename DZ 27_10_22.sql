use artemwo;  drop table goods;



alter table goods
drop check price ;

/* ДЗ
-- Создайте таблицу goods:
-- id первичный ключ автоинкремент
-- title строка 128
-- quantity
-- price целое число*/

select* 
from Goods;

create table Goods(
id integer primary key auto_increment,
title varchar(128),
quantity integer(128),
price integer
);

-- Добавьте 10 строк
insert into goods (title, quantity, price) value ('Black-Hoodie', 22, 250),
											   ('Red-Hoodie', 2, 300),
                                               ('Yellow-Hoodie', 24, 100),
											   ('Green-Hoodie', 12, 900),
											   ('Blue-Hoodie', 42, 500),
											   ('Pink-Hoodie', 27, 1000),
											   ('White-Hoodie', 3, 1234),
                                               ('Brown-Hoodie', 23, 123),
											   ('Рurple-Hoodie', 13, 789),
											   ('Gray-Hoodie', 9, 654);
                                                  
         -- Проверьте содержимое таблицы
select* 
from Goods;

-- Найдите товары дешевле 1000
 

select*
from Goods
where price <1000;

-- Найдите товары, начинающиеся на B
select*
from Goods
where title like 'B%';

-- Добавление нового поля
alter table goods
add Defective varchar(128);
-- Удалите товары дороже 1000
set sql_safe_update = 0;
delete 
from Goods
where price <700;

-- Очистите таблицу так, чтобы при повторном заполнении автоинкремент добавлял айдишники с 1 
delete from goods;
truncate goods;

-- Удаление поля
alter table goods
drop column Defective;

-- Изменение поля (тип данных/ограничение)
alter table goods
modify column price numeric(10, 222);

-- Изменение именя поля
alter table goods
change price productPrice integer;

-- UPDATE
-- Изменение данных таблицы
update goods
set price = 100
where title like 'G%';





