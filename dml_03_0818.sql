-- insert into

-- �κ� ����
select * from book;
desc book;
insert into book(bookid, publisher, bookname) values (11, '��������', '������ ����');

-- �뷮 ����(bulk insert)
select * from imported_book; 
-- book���̺��� ��� ���̺��� imported_book���� ����
insert into imported_book(bookid, bookname, publisher, price) 
select bookid, bookname, publisher, price
from book;

insert into imported_book 
select *
from book;
--�ߺ�����
SELECT DISTINCT * FROM imported_book;

-- ������ ����
delete from imported_book;

-- �÷����� ���(����)�Ͽ� bookid 7���� 14�������� �����͸� ����
insert into imported_book 
select *
from book 
where bookid between 1 and 3;

insert into imported_book(bookid, bookname, publisher, price) 
select bookid, bookname, publisher, price
from book
where bookid between 7 and 14;

-------------------------------------------------
-- update
select * from customer;
update customer set address='���ѹα� �д�' where custid = 5;

--�ּ� ��������
select address from customer where name = '�迬��';

--��� ������ �ּ� �ֱ�
update customer 
set address=(select address from customer where name = '�迬��') 
where name like '�ڼ���';

select * from orders;
Alter table orders add bookname varchar2(40);

-- �̳�����
update orders
set bookname=(select bookname from book where book.bookid=orders.bookid);

alter table orders drop column bookname;

select * from imported_book  order by bookid;

delete from imported_book where bookid=11;

--��������, ���ǻ� ��������
select * from book order by price desc, publisher asc;

