--ѕолучите список всех сотрудников с именем David
Select *
From employees
Where first_name like 'David'; -- или first_name = 'David'

--ѕолучите список всех сотрудников, у которых job_id равен FI_ACCOUNT
Select *
From employees
Where job_id  like 'FI_ACCOUNT'; -- или job_id = 'FI_ACCOUNT'

--¬ыведите информацию о имени, фамилии, з/п и номере департамента
--дл€ сотрудников из 50го департамента с зарплатой, большей 4000.
Select first_name, last_name, salary, department_id
From employees
Where department_id like '50' and salary > 4000; -- или department_id = 50

--ѕолучите список всех сотрудников, которые работают или в 20м, или в
--30м департаменте
Select *
From employees
Where department_id in (20,30);-- или department_id=20 or department_id=30

--ѕолучите список всех сотрудников, у которых втора€ и последн€€ буква
--в имени равна 'a'.
Select *
From employees
Where first_name like '_a%a';

--ѕолучите список всех сотрудников из 50го и из 80го департамента, у
--которых есть бонус(комиссионные). ќтсортируйте строки по email
--(возрастающий пор€док), использу€ его пор€дковый номер
Select *
From employees
Where department_id in (50,80) and commission_pct is not null 
--или department_id=50 or department_id=80
Order by 4;

--ѕолучите список всех сотрудников, у которых в имени содержатс€
--минимум 2 буквы 'n'.
Select *
From employees
Where first_name like '%n%n%';

--ѕолучить список всех сотрудников, у которых длина имени больше 4
--букв. ќтсортируйте строки по номеру департамента (убывающий
--пор€док) так, чтобы значени€ УnullФ были в самом конце.
Select *
From employees
Where first_name like '_____%'
Order by department_id desc nulls last;

--ѕолучите список всех сотрудников, у которых зарплата находитс€ в
--промежутке от 3000 до 7000 (включительно), нет бонуса
--(комиссионных) и job_id среди следующих вариантов: PU_CLERK,
--ST_MAN, ST_CLERK.
Select *
From employees
Where salary between 3000 and 7000 
and commission_pct is null 
and job_id in ('PU_CLERK','ST_MAN','ST_CLERK');

--ѕолучите список всех сотрудников у которых в имени содержитс€
--символ '%'
Select *
From employees
Where first_name like '%\%%' escape '\';

--¬ыведите информацию о job_id, имене и з/п дл€ работников, рабочий
--id которых больше или равен 120 и job_id не равен IT_PROG.
--ќтсортируйте строки по job_id (возрастающий пор€док) и именам
--(убывающий пор€док).
Select employee_id, job_id, first_name, salary
From employees
Where employee_id >=120 and job_id not like 'IT_PROG' -- или job_id != 'IT_PROG'
Order by job_id, first_name desc;