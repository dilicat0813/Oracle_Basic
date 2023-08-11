--Department ���̺�

CREATE TABLE Department(
deptno NUMBER(2) PRIMARY KEY,
deptname VARCHAR2(40),
manager VARCHAR2(40)
);

-- Employee Table
CREATE TABLE Employee(
empno NUMBER PRIMARY KEY,
deptno NUMBER,
name VARCHAR2(40),
phoneno NUMBER,
address VARCHAR2(40),
gender VARCHAR2(40),
posision VARCHAR2(40),
foreign key(deptno) REFERENCES Department(deptno)
);

create table proejct(
projno number not null,
projname varchar2(40),
deptno number,
primary key(projno),
foreign key(deptno) REFERENCES Department(deptno)
);

-- ���� Ű�� �����ϰ�, ���߿� �����̸Ӹ�, ����Ű, ���� ���� ����

-- Works: �⺻Ű(projno, empno), ����(projno, empno)
-- (projno(����),empno(����), hoursworked(����))
create table works(
projno number not null,
empno number not null,
hoursworked number,
PRIMARY KEY(projno, empno),
FOREIGN KEY(projno) REFERENCES proejct(projno),
foreign key(empno) REFERENCES Employee(empno)
);

--projno empno ������ Ű, �����̸Ӹ�Ű�� ����Ű�� ���踦 ��Ȯ�� �ϰ�, ������ �Ͱ� �������� ���� ������ ���� �����س��ƾ� �� 