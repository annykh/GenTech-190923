-- Онлайн MySQL
-- https://onecompiler.com/mysql
-- https://www.mycompiler.io/new/mysql

-- Создать таблицу staff используя файл staff.txt
-- https://github.com/annykh/genTech/blob/main/staff.txt

select * from Staff;

-- Оператор LIKE
-- https://tproger.ru/articles/like-sql?ysclid=lqasbb5xnk967414428

select * from Staff
where firstname = 'Anna';

select * from Staff
where firstname In ('Anna');

select * from Staff
where firstname Like 'Anna';

select * from Staff
where firstname Like 'A%';

select * from Staff
where firstname Like '%r';

select * from Staff
where firstname Like 'A%r';

select * from Staff
where firstname Like 'An%';

select * from Staff
where firstname Like '_a%';

select * from Staff
where firstname Like '____';


-- Найти список работников, у которых средний уровень должности(middle) и им больше 20 лет

select * from Staff
where position like '%middle%' and age>20;

-- Найти список работников, у которых имя начинается с буквы А и у них нет детей

select * from Staff
where firstname like 'a%' and has_child = 'N';


-- Найти первых трех сотрудников, чьи имена начинаются на A

select * from Staff
where firstname like 'a%'
limit 3;


-- Найти сотрудников с id 4, 12, 19 

select * from Staff
where id = 4 or id = 12 or id = 19;

select * from Staff
where id in (4, 12, 19);

-- Найти список работников с именем Анна, у которых уровень должности либо средний(middle), либо старший(senior)

select * from Staff
where firstname = 'Anna' and (position like '%middle%' or position like '%senior%');

select * from Staff
where firstname = 'Anna' and position not like '%junior%';

-- Найти список работников, у который юзернейм заканчивается на ‘1’

select * from Staff
where username like '%1';

-- Найти список работников, у который юзернейм состоит из 5 символов

select * from Staff
where username like '_____';