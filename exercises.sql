-- таблицы 
SELECT 
  (SELECT count(*) FROM users)	   AS users, 
  (SELECT count(*) FROM products)  AS products;

-- 1.все адменистраторы
select email, full_name
from users
where role = 'admin';

-- 2.доступная электроника 
select name, price 
from products 
where category = 'Electronics'
	and price < 50
order by price asc;


-- 3.самые новые аккаунты
select email, created_at
from users
order by created_at desc
limit 10;


-- 4.только клавиатуры 
select name, category, price 
from products
where name like '%Keyboard%'
order by name asc;

-- 5.именаб начинающиеся на "A"
select full_name, email
from users
where full_name like 'A%';

-- 6.самая дешевая мебель
select name, price 
from products 
where category = 'Furniture'
order by price asc;


-- 7.средний ценовой диаопазон
select name, category, price 
from products 
where price between 100 and 200
order by price desc
limit 10;

-- 8."вторая страница" дорогих товаров
select name, price 
from products
order by price desc
limit 5 offset 5;


-- 9.Концептный вопрос: orders будет ссылаться на id в таблице users,потому что он уникален для каждого пользователя.