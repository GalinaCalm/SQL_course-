--Выведите всю информацию о регионах
Select *
From regions;

--Выведите информацию о имени, id департамента, зарплате и фамилии
--для всех работников
Select first_name, department_id, salary, last_name
From employees;

--Выведите информацию о id работника, электронной почте и дату,
--которая была за неделю до трудоустройства для всех работников.
--Столбец, который будет содержать дату назовите One week before hire
--date .
Select employee_id, email, hire_date-7 "one week before hire date"
From employees;

--Выведите информацию о работниках с их позициями в формате:
--Donald(SH_CLERK) . Назовите столбец our_employees .
Select first_name||'('||job_id||')' as our_employees
From employees;

--Выведите список уникальных имён среди работников
Select DISTINCT first_name
From employees;

--Выведите следующую информацию из таблицы jobs:
--job_title,
--выражение в формате: «min = 20080, max = 40000»,
--где 20080 – это минимальная з/п, а 40000 – максимальная.
--Назовите этот столбец info.
--максимальную з/п и назовите столбец max,
--новую з/п, которая будет называться new_salary и вычисляться по
--формуле: max_salary*2-2000.
Select job_title, 'min = '||min_salary||', max = '||max_salary as info,
max_salary as max, (max_salary*2-2000)as new_salary
From jobs;

--Выведите на экран предложение «Peter's dog is very clever», используя
--одну из двух техник работы с одинарными кавычками.
Select 'Peter''s dog is very clever' as text
From dual;

--Выведите на экран предложение «Peter's dog is very clever», используя,
--отличную от предыдущего примера, технику работы с одинарными
--кавычками.
Select q'<Peter's dog is very clever>' as text
From dual;

--Выведите на экран количество минут в одном веке (1 год = 365.25
--дней).
Select 60*24*364.25*100 as days
From dual;



