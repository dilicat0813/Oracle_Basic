--------------
-- system 계정에서 시작
ALTER SESSION SET "_ORACLE_SCRIPT"=true;
--사용자생성(==데이터베이스생성) 생성 : apcOracle
create user apcOracle IDENTIFIED BY 12345;
--기본권한(접속,기본소스)
grant connect, resource to apcOracle;
--등록(developr)
--물리적 공간
alter user apcOracle default tablespace users quota unlimited on users;
--세부적인 권한
grant create table, create session, create view, create sequence, create procedure to apcOracle;
-- DML 권한
grant select, delete, update, insert on madang.book to apcOracle;
grant select, delete, update, insert on madang.customer to apcOracle;
grant select, delete, update, insert on madang.orders to apcOracle;

-- 학사관리 프로젝트(정수 : number, 문자 : varchar2)
-- 학생([학생번호], 이름, 성별, 주소, 전화번호) ==> student
-- 강좌([강좌번호], {학생번호}, {교수번호}, 강좌명, 강의실, 강좌시간)==>class
-- 교수([교수번호], 학생번호, 이름, 성별, 주소, 전화번호)=>professor
--제약조건 alter로 구현
drop table student;
create table student(
stdnum number(10),
stdname varchar2(20),
gender varchar2(10),
address varchar2(40),
phone varchar2(20)
);

drop table professor;
create table professor(
proid number (10),
stuid number (10),
proname varchar2 (20),
progender varchar2 (10),
proaddress varchar2 (40),
phone varchar2 (10)
);

alter table student add primary key(stdnum);
alter table professor add primary key(proid);

drop table class;
create table class(
classnum number(20),
stdnum number(20),
pronum number(20),
classname varchar(20),
classadress varchar(20),
classtime varchar2(20)
);

alter table class add primary key(classnum);

alter table class add CONSTRAINT student foreign key(stdnum) REFERENCES student(stdnum);
alter table class add CONSTRAINT professor foreign key(pronum) REFERENCES professor(proid);