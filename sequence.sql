----------------------------
sequence.sql �ϴ� ����ð�
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

-- timestamp : date Ÿ���� Ȯ�� ( year, month,day,hour,minute,second)
-- with time zone : timestamp�� type���� GMT�� �������� ���� ����
-- default systimestamp : �����ͺ��̽��� �����ϴ� �ý��� �ð��� ����

select * from emp_seq;

insert into emp_seq values(seq_test.nextval, 'ȫ�浿', default);
insert into emp_seq values(seq_test.nextval, '������', default);
insert into emp_seq values(seq_test.nextval, '�ڿ�ȣ', default);

-- �������� ����
alter sequence seq_test increment by 2;
alter sequence seq_test maxvalue 1000;


insert into emp_seq values(seq_test.nextval, '��ġ��', default);
insert into emp_seq values(seq_test.nextval, '��ġ', default);
insert into emp_seq values(seq_test.nextval, '�ڼ�', default);


--���� ������

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

insert into emp_seq2 values(seq_test2.nextval, 'ȫ�浿', default);
insert into emp_seq2 values(seq_test2.nextval, '������', default);
insert into emp_seq2 values(seq_test2.nextval, '�ڿ�ȣ', default);