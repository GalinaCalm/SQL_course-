--�������� ������ ���� ����������� � ������ David
Select *
From employees
Where first_name like 'David'; -- ��� first_name = 'David'

--�������� ������ ���� �����������, � ������� job_id ����� FI_ACCOUNT
Select *
From employees
Where job_id  like 'FI_ACCOUNT'; -- ��� job_id = 'FI_ACCOUNT'

--�������� ���������� � �����, �������, �/� � ������ ������������
--��� ����������� �� 50�� ������������ � ���������, ������� 4000.
Select first_name, last_name, salary, department_id
From employees
Where department_id like '50' and salary > 4000; -- ��� department_id = 50

--�������� ������ ���� �����������, ������� �������� ��� � 20�, ��� �
--30� ������������
Select *
From employees
Where department_id in (20,30);-- ��� department_id=20 or department_id=30

--�������� ������ ���� �����������, � ������� ������ � ��������� �����
--� ����� ����� 'a'.
Select *
From employees
Where first_name like '_a%a';

--�������� ������ ���� ����������� �� 50�� � �� 80�� ������������, �
--������� ���� �����(������������). ������������ ������ �� email
--(������������ �������), ��������� ��� ���������� �����
Select *
From employees
Where department_id in (50,80) and commission_pct is not null 
--��� department_id=50 or department_id=80
Order by 4;

--�������� ������ ���� �����������, � ������� � ����� ����������
--������� 2 ����� 'n'.
Select *
From employees
Where first_name like '%n%n%';

--�������� ������ ���� �����������, � ������� ����� ����� ������ 4
--����. ������������ ������ �� ������ ������������ (���������
--�������) ���, ����� �������� �null� ���� � ����� �����.
Select *
From employees
Where first_name like '_____%'
Order by department_id desc nulls last;

--�������� ������ ���� �����������, � ������� �������� ��������� �
--���������� �� 3000 �� 7000 (������������), ��� ������
--(������������) � job_id ����� ��������� ���������: PU_CLERK,
--ST_MAN, ST_CLERK.
Select *
From employees
Where salary between 3000 and 7000 
and commission_pct is null 
and job_id in ('PU_CLERK','ST_MAN','ST_CLERK');

--�������� ������ ���� ����������� � ������� � ����� ����������
--������ '%'
Select *
From employees
Where first_name like '%\%%' escape '\';

--�������� ���������� � job_id, ����� � �/� ��� ����������, �������
--id ������� ������ ��� ����� 120 � job_id �� ����� IT_PROG.
--������������ ������ �� job_id (������������ �������) � ������
--(��������� �������).
Select employee_id, job_id, first_name, salary
From employees
Where employee_id >=120 and job_id not like 'IT_PROG' -- ��� job_id != 'IT_PROG'
Order by job_id, first_name desc;