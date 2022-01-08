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

--Ïîëó÷èòå ñïèñîê âñåõ ñîòðóäíèêîâ èç 50ãî è èç 80ãî äåïàðòàìåíòà, ó
--êîòîðûõ åñòü áîíóñ(êîìèññèîííûå). Îòñîðòèðóéòå ñòðîêè ïî email
--(âîçðàñòàþùèé ïîðÿäîê), èñïîëüçóÿ åãî ïîðÿäêîâûé íîìåð
Select *
From employees
Where department_id in (50,80) and commission_pct is not null 
--èëè department_id=50 or department_id=80
Order by 4;

--Ïîëó÷èòå ñïèñîê âñåõ ñîòðóäíèêîâ, ó êîòîðûõ â èìåíè ñîäåðæàòñÿ
--ìèíèìóì 2 áóêâû 'n'.
Select *
From employees
Where first_name like '%n%n%';

--Ïîëó÷èòü ñïèñîê âñåõ ñîòðóäíèêîâ, ó êîòîðûõ äëèíà èìåíè áîëüøå 4
--áóêâ. Îòñîðòèðóéòå ñòðîêè ïî íîìåðó äåïàðòàìåíòà (óáûâàþùèé
--ïîðÿäîê) òàê, ÷òîáû çíà÷åíèÿ “null” áûëè â ñàìîì êîíöå.
Select *
From employees
Where first_name like '_____%'
Order by department_id desc nulls last;

--Ïîëó÷èòå ñïèñîê âñåõ ñîòðóäíèêîâ, ó êîòîðûõ çàðïëàòà íàõîäèòñÿ â
--ïðîìåæóòêå îò 3000 äî 7000 (âêëþ÷èòåëüíî), íåò áîíóñà
--(êîìèññèîííûõ) è job_id ñðåäè ñëåäóþùèõ âàðèàíòîâ: PU_CLERK,
--ST_MAN, ST_CLERK.
Select *
From employees
Where salary between 3000 and 7000 
and commission_pct is null 
and job_id in ('PU_CLERK','ST_MAN','ST_CLERK');

--Ïîëó÷èòå ñïèñîê âñåõ ñîòðóäíèêîâ ó êîòîðûõ â èìåíè ñîäåðæèòñÿ
--ñèìâîë '%'
Select *
From employees
Where first_name like '%\%%' escape '\';

--Âûâåäèòå èíôîðìàöèþ î job_id, èìåíå è ç/ï äëÿ ðàáîòíèêîâ, ðàáî÷èé
--id êîòîðûõ áîëüøå èëè ðàâåí 120 è job_id íå ðàâåí IT_PROG.
--Îòñîðòèðóéòå ñòðîêè ïî job_id (âîçðàñòàþùèé ïîðÿäîê) è èìåíàì
--(óáûâàþùèé ïîðÿäîê).
Select employee_id, job_id, first_name, salary
From employees
Where employee_id >=120 and job_id not like 'IT_PROG' 
-- èëè job_id != 'IT_PROG'
Order by job_id, first_name desc;
