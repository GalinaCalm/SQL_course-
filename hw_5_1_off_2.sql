
--»спользу€ функции, получите список всех сотрудников у которых в
--имени есть буква 'b' (без учета регистра).
Select *
From employees
Where lower(first_name) like '%b%';
--или
Select*
From employees
Where instr(lower(first_name),'b')>0;

--»спользу€ функции, получите список всех сотрудников у которых в
--имени содержатс€ минимум 2 буквы 'a'.
Select *
From employees
Where lower(first_name) like '%a%a%';
--или
Select*
From employees
Where instr(lower(first_name),'a',1,2)>0;

--ѕолучите первое слово из имени департамента, дл€ тех
--департаментов, у которых название состоит больше, чем из одного
--слова.
Select department_name, substr(department_name,1,instr(department_name,' ')-1) as result
From departments
Where department_name like '%_ _%';
--или
Select department_name, substr(department_name,1,instr(department_name,' ')-1) as result
From departments
Where instr(department_name,' ')>0;

--ѕолучите имена сотрудников без первой и последней буквы в имени.
Select first_name, substr(first_name,2,length(first_name)-2) as result
From employees;

--ѕолучите список всех сотрудников, у которых в значении job_id после
--знака '_' как минимум 3 символа, но при этом это значение после '_' не
--равно 'CLERK'.
Select *
From employees
Where job_id not like '%CLERK%' and job_id like '%\_____%' escape'\';
--или
Select*
From employees
Where length(substr(job_id, instr(job_id,'_')+1))>3
and substr(job_id,instr(job_id,'_')+1)!='CLERK';

--ѕолучите список всех сотрудников, которые пришли на работу в
--первый день любого мес€ца.
Select *
From employees
Where to_char(hire_date) like '01%';
--или
Select *
From employees
Where to_char(hire_date,'dd')='01';

--ѕолучите список всех сотрудников, которые пришли на работу в
--2008ом году
Select *
From employees
Where to_char(hire_date) like '__.__.%08';
--или
Select *
From employees
Where to_char(hire_date,'yyyy')='2008' ;

--ѕокажите завтрашнюю дату в формате:
--Tomorrow is Second day of January
Select to_char(sysdate+1,'fm"Tomorrow is "Ddspth "day of" Month') as result
From dual;

--¬ыведите им€ сотрудника и дату его прихода на работу в формате:
--21st of June, 2007
Select first_name, to_char(hire_date,'fmddth "of" Month, yyyy')as result
From employees;

--ѕолучите список работников с увеличенными зарплатами на 20%.
--«арплату показать в формате: $28,800.00
Select first_name,last_name,to_char(salary*1.2,'$99,999.99') as result
From employees;

