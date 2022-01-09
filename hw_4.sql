--�������� ������ ���� �����������, � ������� ����� ����� ������ 10
--����.
Select *
From employees
Where length(first_name)>10;

--�������� ������ ���� �����������, �������� ������� ������ 1000.
Select *
From employees
Where mod(salary,1000)=0;

--�������� ���������� ����� � ������ 3� ������� ����� �����������
--������ ����������, ���� ��� ����� ����������� � �������
--���.���.���� .
Select phone_number, substr(phone_number,1,3)
From employees
Where phone_number like '___.___.____';

--�������� ������ ���� �����������, � ������� ��������� ����� � �����
--����� 'm' � ����� ����� ������ 5��.
Select *
From employees
Where first_name like '%m' and length(first_name)>5;
-- ��� substr(first_name,-1) ='m'

--�������� ���� ��������� �������.
Select next_day(sysdate,'�������')
From dual;

--�������� ������ ���� �����������, ������� �������� � ��������
--������ 12 ��� � 6�� ������� (150 �������).
Select *
From employees
Where months_between (sysdate,hire_date)>150;

--�������� ���������� �����, ������� � �������� PHONE_NUMBER ���
--'.' �� '-'
Select replace(phone_number,'.','-') as new_phone_number
From employees;

--�������� ���, email, job_id ��� ���� ���������� � �������:
--STEVEN sking Ad_Pres
Select upper(first_name),lower(email),initcap(job_id)
From employees;

--�������� ���������� � ����� ��������� � ��� �/�, �� ���������
--������ || , � ����� ����: Steven24000
Select concat(first_name,salary)
From employees;

--�������� ���������� � ���� ����� ���������� �� ������,
--���������� ���� ����� �� ������ �� ������ � ������ ��� ����
--����� �� ������.
Select  hire_date, round(hire_date,'mm'),trunc(hire_date,'y')
From employees;

--�������� ���������� � ����� � ������� ���� ����������. ���
--������ �������� �� 10 �������� � ���� ����� ����� ������ 10, ��
--���������� �� 10 �������� ������ $. ������� ������ �������� �� 15
--�������� � ���� ����� ������� ������ 15, �� ����� ��������
--������� ������� ������ ! ������� ����������
Select rpad(first_name,10,'$'),lpad(last_name,15,'!')
From employees;

--�������� ��� ���������� � ������� ������ ����� �a� � ��� �����.
Select first_name, instr(first_name,'a',1,2)
From employees;

--�������� �� ����� ����� '!!!HELLO!! MY FRIEND!!!!!!!!' � ��� �� �����, ��
--��� ������� ��������������� ���� � ������ � ����� ������.
Select trim(both '!' from '!!!HELLO!! MY FRIEND!!!!!!!!')
From dual;

--�������� ���������� �:
--�/� ���������,
--�/� ���������� �� ����������� 3.1415 ,
--���������� �� ������ �������� ������� ����������� �/�-��,
--����� ���������� ����� �� ����������� �/�.
Select salary, salary*3.1415, round(salary*3.1415),trunc((salary*3.1415)/1000)
From employees;

--�������� ���������� �:
--���� ����� ���������� �� ������,
--����, ������� ���� ����� ��� ����, ����� �������� ���������� ��
--������,
--���� ���������� ��� � ������ �������� ���������� �� ������.
Select hire_date, add_months(hire_date,6),last_day(hire_date)
From employees;
