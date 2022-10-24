use artemwo;      drop table goods; 
create table goods(        -- Создайте таблицу goods 
id int PRIMARY KEY auto_increment,
title varchar(128),
quantity int(128),
 price integer
);
insert into goods (title, quantity, price) value ('Lg', 234, 2000),               -- Добавьте 10 строк
													 ('Panasonic', 214, 500),
                                                     ('Sony', 23, 4345),
                                                     ('Samsung', 4, 1000),
													 ('Fujisu', 24, 3500),
                                                     ('Beko', 1, 445),
                                                     ('Bosch', 22, 4234),
													 ('BQ', 14, 3500),
                                                     ('Dyson', 12, 350),
                                                     ('Appel', 7, 1000),
													 ('Bissell', 99, 555),
                                                     ('Gaggenau', 232, 4445);
                                                     
 select* from goods;            -- Проверьте содержимое таблицы
 
 select                        -- Найдите товары дешевле 1000
 price
 from goods;
 
select                             -- Найдите товары, начинающиеся на А
title  
from goods
where title like 'A%';
   
set sql_safe_updates = 0;
delete from goods                                  -- Удалите товары дороже 1000
where price >1000;
   
 truncate goods;                                  /* Очистите таблицу так, чтобы при повторном 
												    заполнении автоинкремент добавлял айдишники с 1 */