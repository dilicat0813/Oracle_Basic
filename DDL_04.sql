-- ORCLE �⺻Ű �������� �� ����
create table NewBook(
bookname varchar2(20),
publisher VARCHAR2(20),
price number,
PRIMARY KEY(bookname,publisher));

drop table NewBook;

-- not null, unique(�ߺ������� �Է� �Ұ��� �ϰ� ���� ��), default �Է°��� ���� ��� �⺻ ������ �� �Է�, check: �����Է½� �ּ� �ݾ�

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


-- on delete cascade : �θ����̺��� �����ϸ� �ڽ����̺��� �����͵� ����
-- on update cascade :�θ����̺��� ������Ʈ �Ǹ� �ڽ����̺� ���� ������Ʈ(����Ŭ ����)
create table neworders(
orderid number,
custid number,
bookid number,
saleprice number,
orderdate date,
PRIMARY KEY(orderid),
foreign key(custid) references newcustomer(custid) on delete cascade );

-- ��������
select * from newbook;
alter table newbook add isbn varchar2(40); --�Ӽ� �߰�
alter table newbook modify isbn number; --�Ӽ� Ÿ�� ����
alter table newbook rename column isbn to iss; --�Ӽ� �̸� ����
alter table newbook drop column iss; -- ����
desc newbook; -- ���¿��
alter table newbook rename to TB_newbook; --���̺�� ����

