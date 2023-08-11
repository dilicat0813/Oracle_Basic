--Department 테이블

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

-- 먼저 키를 선언하고, 나중에 프라이머리, 포린키, 참조 등을 설정

-- Works: 기본키(projno, empno), 참조(projno, empno)
-- (projno(정수),empno(정수), hoursworked(정수))
create table works(
projno number not null,
empno number not null,
hoursworked number,
PRIMARY KEY(projno, empno),
FOREIGN KEY(projno) REFERENCES proejct(projno),
foreign key(empno) REFERENCES Employee(empno)
);

--projno empno 유일할 키, 프라이머리키와 포린키의 관계를 명확히 하고, 유일할 것과 여러개가 접근 가능할 것을 구분해놓아야 함 