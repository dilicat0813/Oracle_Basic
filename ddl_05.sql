-- system 계정에서 시작
ALTER SESSION SET "_ORACLE_SCRIPT"=true;
-- 사용자 생성 (==데이터 베이스) 생성
CREATE USER apcOracle IDENTIFIED by 12345;

--기본권한 (접속, 기본소스)
GRANT connect, resource to apcOracle;

--등록(developer) 등록


--물리적 공간 확보
alter user developer default tablespace USERS quota unlimited on USERS;

--세부적인 권한
grant CREATE table, CREATE session, CREATE view, CREATE sequence, CREATE procedure to apcOracle;

--DML권한
grant select, delete, update, insert on madang.book to apcOracle 
grant select, delete, update, insert on madang.customer to apcOracle
grant select, delete, update, insert on madang.orders to apcOracle

-- 학사관리 프로젝트(정수 : number, 문자 : varchar2)
-- 학생(학생번호pk, 이름, 성별, 주소, 전화번호) student table
Create table student(
stdNum, number,
stdName, varchar2(40),
stdSex, varchar2(20),
stdAddress, varchar2(100),
phoneNum, number
);
-- 강좌(강좌번호pk, 학생번호fk, 교수번호, 강좌명, 강의실, 강좌시간) class table
create table class(
clsNum, number,
stdNum, number,
prfNum, number,
clsName, varchar2(40),
clsRoom, number,
clsTime, Date
);

-- 교수(교수번호pk, 학생번호fk, 이름, 성별, 주소, 전화번호) professor table
--제약조건은 alter 로 구현
create table professor(
pfsNum, number,
stdNum, number,
pfsName, varchar2(40),
pfsSex,  varchar2(20),
pfsAddress,  varchar2(40),
phoneNum, number
);

-- 18c, 세션 설정
ALTER SESSION SET "_ORACLE_SCRIPT"=true;

-- 계정생성 = DB
CREATE USER madang IDENTIFIED BY 12345;

-- 계정 삭제
DROP User madang CASCADE;

-- 계정등록 권한
grant connect, resource to madang;

-- 계정비번 변경 
ALTER user madang IDENTIFIED BY 12345;

-- 기본계정 데이터 추가(예제용, 현재 작동 안함)
-- ALTER user scott account unlock

-- 다른 데이터베이스 접근 권한 제공(GRANT)
grant CREATE table, CREATE session, CREATE view, CREATE sequence, CREATE procedure to madang;

-- ==============================================

CREATE USER guest IDENTIFIED BY 12345;
grant connect, resource to guest;
grant CREATE table, CREATE session, CREATE view, CREATE sequence, CREATE procedure to guest;
