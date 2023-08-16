-- ORCLE 기본키 여러개일 때 문법
create table NewBook(
bookname varchar2(20),
publisher VARCHAR2(20),
price number,
PRIMARY KEY(bookname,publisher));

drop table NewBook;

-- not null, unique(중복데이터 입력 불가능 하고 싶을 때), default 입력값이 없을 경우 기본 데이터 값 입력, check: 직접입력시 최소 금액

create table NewBook(
bookname varchar2(20) not null,
publisher VARCHAR2(20) UNIQUE,
price number DEFAULT 100 check(price > 3000),
PRIMARY KEY(bookname,publisher));

create table newcustomer(
custid number primary key,
name varchar2(40),
address varchar2(40),
phone varchar2(40)
);


-- on delete cascade : 부모테이블에서 삭제하면 자식테이블의 데이터도 삭제
-- on update cascade :부모테이블이 업데이트 되면 자식테이블도 같이 업데이트(오라클 예외)
create table neworders(
orderid number,
custid number,
bookid number,
saleprice number,
orderdate date,
PRIMARY KEY(orderid),
foreign key(custid) references newcustomer(custid) on delete cascade );

-- 제약조건
select * from newbook;
alter table newbook add isbn varchar2(40); --속성 추가
alter table newbook modify isbn number; --속성 타입 변경
alter table newbook rename column isbn to iss; --속성 이름 변경
alter table newbook drop column iss; -- 삭제
desc newbook; -- 상태요약
alter table newbook rename to TB_newbook; --테이블명 변경

