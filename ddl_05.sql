-- system �������� ����
ALTER SESSION SET "_ORACLE_SCRIPT"=true;
-- ����� ���� (==������ ���̽�) ����
CREATE USER apcOracle IDENTIFIED by 12345;

--�⺻���� (����, �⺻�ҽ�)
GRANT connect, resource to apcOracle;

--���(developer) ���


--������ ���� Ȯ��
alter user developer default tablespace USERS quota unlimited on USERS;

--�������� ����
grant CREATE table, CREATE session, CREATE view, CREATE sequence, CREATE procedure to apcOracle;

--DML����
grant select, delete, update, insert on madang.book to apcOracle 
grant select, delete, update, insert on madang.customer to apcOracle
grant select, delete, update, insert on madang.orders to apcOracle

-- �л���� ������Ʈ(���� : number, ���� : varchar2)
-- �л�(�л���ȣpk, �̸�, ����, �ּ�, ��ȭ��ȣ) student table
Create table student(
stdNum, number,
stdName, varchar2(40),
stdSex, varchar2(20),
stdAddress, varchar2(100),
phoneNum, number
);
-- ����(���¹�ȣpk, �л���ȣfk, ������ȣ, ���¸�, ���ǽ�, ���½ð�) class table
create table class(
clsNum, number,
stdNum, number,
prfNum, number,
clsName, varchar2(40),
clsRoom, number,
clsTime, Date
);

-- ����(������ȣpk, �л���ȣfk, �̸�, ����, �ּ�, ��ȭ��ȣ) professor table
--���������� alter �� ����
create table professor(
pfsNum, number,
stdNum, number,
pfsName, varchar2(40),
pfsSex,  varchar2(20),
pfsAddress,  varchar2(40),
phoneNum, number
);

-- 18c, ���� ����
ALTER SESSION SET "_ORACLE_SCRIPT"=true;

-- �������� = DB
CREATE USER madang IDENTIFIED BY 12345;

-- ���� ����
DROP User madang CASCADE;

-- ������� ����
grant connect, resource to madang;

-- ������� ���� 
ALTER user madang IDENTIFIED BY 12345;

-- �⺻���� ������ �߰�(������, ���� �۵� ����)
-- ALTER user scott account unlock

-- �ٸ� �����ͺ��̽� ���� ���� ����(GRANT)
grant CREATE table, CREATE session, CREATE view, CREATE sequence, CREATE procedure to madang;

-- ==============================================

CREATE USER guest IDENTIFIED BY 12345;
grant connect, resource to guest;
grant CREATE table, CREATE session, CREATE view, CREATE sequence, CREATE procedure to guest;
