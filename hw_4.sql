--Получите список всех сотрудников, у которых длина имени больше 10
--букв.
Select *
From employees
Where length(first_name)>10;

--Получите список всех сотрудников, зарплата которых кратна 1000.
Select *
From employees
Where mod(salary,1000)=0;

--Выведите телефонный номер и первое 3х значное число телефонного
--номера сотрудника, если его номер представлен в формате
--ХХХ.ХХХ.ХХХХ .
Select phone_number, substr(phone_number,1,3)
From employees
Where phone_number like '___.___.____';

--Получите список всех сотрудников, у которых последняя буква в имени
--равна 'm' и длина имени больше 5ти.
Select *
From employees
Where first_name like '%m' and length(first_name)>5;
-- или substr(first_name,-1) ='m'

--Выведите дату следующей пятницы.
Select next_day(sysdate,'Пятница')
From dual;

--Получите список всех сотрудников, которые работают в компании
--больше 12 лет и 6ти месяцев (150 месяцев).
Select *
From employees
Where months_between (sysdate,hire_date)>150;

--Выведите телефонный номер, заменив в значении PHONE_NUMBER все
--'.' на '-'
Select replace(phone_number,'.','-') as new_phone_number
From employees;

--Выведите имя, email, job_id для всех работников в формате:
--STEVEN sking Ad_Pres
Select upper(first_name),lower(email),initcap(job_id)
From employees;

--Выведите информацию о имени работника и его з/п, не используя
--символ || , в таком виде: Steven24000
Select concat(first_name,salary)
From employees;

--Выведите информацию о дате приёма сотрудника на работу,
--округлённой дате приёма на работу до месяца и первом дне года
--приёма на работу.
Select  hire_date, round(hire_date,'mm'),trunc(hire_date,'y')
From employees;

--Выведите информацию о имени и фамилии всех работников. Имя
--должно состоять из 10 символов и если длина имени меньше 10, то
--дополняйте до 10 символов знаком $. Фамилия должна состоять из 15
--символов и если длина фамилии меньше 15, то перед фамилией
--ставьте столько знаков ! сколько необходимо
Select rpad(first_name,10,'$'),lpad(last_name,15,'!')
From employees;

--Выведите имя сотрудника и позицию второй буквы ‘a’ в его имени.
Select first_name, instr(first_name,'a',1,2)
From employees;

--Выведите на экран текст '!!!HELLO!! MY FRIEND!!!!!!!!' и тот же текст, но
--без символа восклицательный знак в начале и конце текста.
Select trim(both '!' from '!!!HELLO!! MY FRIEND!!!!!!!!')
From dual;

--Выведите информацию о:
--з/п работника,
--з/п умноженной на коэффициент 3.1415 ,
--округлённый до целого значения вариант увеличенной з/п-ты,
--целое количество тысяч из увеличенной з/п.
Select salary, salary*3.1415, round(salary*3.1415),trunc((salary*3.1415)/1000)
From employees;

--Выведите информацию о:
--дате приёма сотрудника на работу,
--дате, которая была через пол года, после принятия сотрудника на
--работу,
--дате последнего дня в месяце принятия сотрудника на работу.
Select hire_date, add_months(hire_date,6),last_day(hire_date)
From employees;
