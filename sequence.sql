----------------------------
sequence.sql 일단 만드시고
-------------------
drop SEQUENCE SEQ_TEST;
create SEQUENCE SEQ_TEST
start WITH 1
increment by 1
minvalue 1
maxvalue 9999
cycle nocache;

drop table emp_seq
create table emp_seq(
id number,
name varchar2(20),
day timestamp with time zone default systimestamp);

-- timestamp : date 타입이 확장 ( year, month,day,hour,minute,second)
-- with time zone : timestamp의 type으로 GMT를 기준으로 시차 적용
-- default systimestamp : 데이터베이스가 존재하는 시스템 시간에 맞춤

select * from emp_seq;

insert into emp_seq values(seq_test.nextval, '홍길동', default);
insert into emp_seq values(seq_test.nextval, '김태희', default);
insert into emp_seq values(seq_test.nextval, '박영호', default);

-- 시퀀스의 수정
alter sequence seq_test increment by 2;
alter sequence seq_test maxvalue 1000;


insert into emp_seq values(seq_test.nextval, '이치과', default);
insert into emp_seq values(seq_test.nextval, '김치', default);
insert into emp_seq values(seq_test.nextval, '박수', default);


--감소 시퀀스

drop SEQUENCE SEQ_TEST2;
create SEQUENCE SEQ_TEST2
START with 1000
increment by -1
minvalue 1
maxvalue 1000
nocache
nocycle ;

drop table emp_seq2
create table emp_seq2(
id number,
name varchar2(20),
day timestamp with time zone default systimestamp);

select * from emp_seq2;

insert into emp_seq2 values(seq_test2.nextval, '홍길동', default);
insert into emp_seq2 values(seq_test2.nextval, '김태희', default);
insert into emp_seq2 values(seq_test2.nextval, '박영호', default);