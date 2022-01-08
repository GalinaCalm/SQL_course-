--�������� ��� ���������� � ��������
Select *
From regions;

--�������� ���������� � �����, id ������������, �������� � �������
--��� ���� ����������
Select first_name, department_id, salary, last_name
From employees;

--�������� ���������� � id ���������, ����������� ����� � ����,
--������� ���� �� ������ �� ��������������� ��� ���� ����������.
--�������, ������� ����� ��������� ���� �������� One week before hire
--date .
Select employee_id, email, hire_date-7 "one week before hire date"
From employees;

--�������� ���������� � ���������� � �� ��������� � �������:
--Donald(SH_CLERK) . �������� ������� our_employees .
Select first_name||'('||job_id||')' as our_employees
From employees;

--�������� ������ ���������� ��� ����� ����������
Select DISTINCT first_name
From employees;

--�������� ��������� ���������� �� ������� jobs:
--job_title,
--��������� � �������: �min = 20080, max = 40000�,
--��� 20080 � ��� ����������� �/�, � 40000 � ������������.
--�������� ���� ������� info.
--������������ �/� � �������� ������� max,
--����� �/�, ������� ����� ���������� new_salary � ����������� ��
--�������: max_salary*2-2000.
Select job_title, 'min = '||min_salary||', max = '||max_salary as info,
max_salary as max, (max_salary*2-2000)as new_salary
From jobs;

--�������� �� ����� ����������� �Peter's dog is very clever�, ���������
--���� �� ���� ������ ������ � ���������� ���������.
Select 'Peter''s dog is very clever' as text
From dual;

--�������� �� ����� ����������� �Peter's dog is very clever�, ���������,
--�������� �� ����������� �������, ������� ������ � ����������
--���������.
Select q'<Peter's dog is very clever>' as text
From dual;

--�������� �� ����� ���������� ����� � ����� ���� (1 ��� = 365.25
--����).
Select 60*24*364.25*100 as days
From dual;



