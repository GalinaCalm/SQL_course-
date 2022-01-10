
--��������� �������, �������� ������ ���� ����������� � ������� �
--����� ���� ����� 'b' (��� ����� ��������).
Select *
From employees
Where lower(first_name) like '%b%';
--���
Select*
From employees
Where instr(lower(first_name),'b')>0;

--��������� �������, �������� ������ ���� ����������� � ������� �
--����� ���������� ������� 2 ����� 'a'.
Select *
From employees
Where lower(first_name) like '%a%a%';
--���
Select*
From employees
Where instr(lower(first_name),'a',1,2)>0;

--�������� ������ ����� �� ����� ������������, ��� ���
--�������������, � ������� �������� ������� ������, ��� �� ������
--�����.
Select department_name, substr(department_name,1,instr(department_name,' ')-1) as result
From departments
Where department_name like '%_ _%';
--���
Select department_name, substr(department_name,1,instr(department_name,' ')-1) as result
From departments
Where instr(department_name,' ')>0;

--�������� ����� ����������� ��� ������ � ��������� ����� � �����.
Select first_name, substr(first_name,2,length(first_name)-2) as result
From employees;

--�������� ������ ���� �����������, � ������� � �������� job_id �����
--����� '_' ��� ������� 3 �������, �� ��� ���� ��� �������� ����� '_' ��
--����� 'CLERK'.
Select *
From employees
Where job_id not like '%CLERK%' and job_id like '%\_____%' escape'\';
--���
Select*
From employees
Where length(substr(job_id, instr(job_id,'_')+1))>3
and substr(job_id,instr(job_id,'_')+1)!='CLERK';

--�������� ������ ���� �����������, ������� ������ �� ������ �
--������ ���� ������ ������.
Select *
From employees
Where to_char(hire_date) like '01%';
--���
Select *
From employees
Where to_char(hire_date,'dd')='01';

--�������� ������ ���� �����������, ������� ������ �� ������ �
--2008�� ����
Select *
From employees
Where to_char(hire_date) like '__.__.%08';
--���
Select *
From employees
Where to_char(hire_date,'yyyy')='2008' ;

--�������� ���������� ���� � �������:
--Tomorrow is Second day of January
Select to_char(sysdate+1,'fm"Tomorrow is "Ddspth "day of" Month') as result
From dual;

--�������� ��� ���������� � ���� ��� ������� �� ������ � �������:
--21st of June, 2007
Select first_name, to_char(hire_date,'fmddth "of" Month, yyyy')as result
From employees;

--�������� ������ ���������� � ������������ ���������� �� 20%.
--�������� �������� � �������: $28,800.00
Select first_name,last_name,to_char(salary*1.2,'$99,999.99') as result
From employees;

