--Получите список всех сотрудников с именем David
Select *
From employees
Where first_name like 'David'; 
-- или first_name = 'David'

--Получите список всех сотрудников, у которых job_id равен FI_ACCOUNT
Select *
From employees
Where job_id  like 'FI_ACCOUNT'; 
-- или job_id = 'FI_ACCOUNT'

--Выведите информацию о имени, фамилии, з/п и номере департамента
--для сотрудников из 50го департамента с зарплатой, большей 4000.
Select first_name, last_name, salary, department_id
From employees
Where department_id like '50' and salary > 4000; 
-- или department_id = 50

--Получите список всех сотрудников, которые работают или в 20м, или в
--30м департаменте
Select *
From employees
Where department_id in (20,30);
-- или department_id=20 or department_id=30

--Получите список всех сотрудников, у которых вторая и последняя буква
--в имени равна 'a'.
Select *
From employees
Where first_name like '_a%a';

--Получите список всех сотрудников из 50го и из 80го департамента, у
--которых есть бонус(комиссионные). Отсортируйте строки по email
--(возрастающий порядок), используя его порядковый номер
Select *
From employees
Where department_id in (50,80) and commission_pct is not null 
--или department_id=50 or department_id=80
Order by 4;

--Получите список всех сотрудников, у которых в имени содержатся
--минимум 2 буквы 'n'.
Select *
From employees
Where first_name like '%n%n%';

--Получить список всех сотрудников, у которых длина имени больше 4
--букв. Отсортируйте строки по номеру департамента (убывающий
--порядок) так, чтобы значения “null” были в самом конце.
Select *
From employees
Where first_name like '_____%'
Order by department_id desc nulls last;

--Получите список всех сотрудников, у которых зарплата находится в
--промежутке от 3000 до 7000 (включительно), нет бонуса
--(комиссионных) и job_id среди следующих вариантов: PU_CLERK,
--ST_MAN, ST_CLERK.
Select *
From employees
Where salary between 3000 and 7000 
and commission_pct is null 
and job_id in ('PU_CLERK','ST_MAN','ST_CLERK');

--Получите список всех сотрудников у которых в имени содержится
--символ '%'
Select *
From employees
Where first_name like '%\%%' escape '\';

--Выведите информацию о job_id, имене и з/п для работников, рабочий
--id которых больше или равен 120 и job_id не равен IT_PROG.
--Отсортируйте строки по job_id (возрастающий порядок) и именам
--(убывающий порядок)
Select employee_id, job_id, first_name, salary
From employees
Where employee_id >=120 and job_id not like 'IT_PROG' 
-- или job_id != 'IT_PROG'
Order by job_id, first_name desc;
