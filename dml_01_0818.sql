select bookname, price from book;
--�ߺ�����
select distinct publisher from book;

select * from book where price >=15000 and price <=23000;

select * from book where price between 15000 and 23000;

select publisher, price from book where bookname = '�౸�� ����';

--����(include) ����
select publisher, price from book where bookname like '�౸�� ����';
select * from book where bookname like '%�౸%';

-- book���̺��� �߱��� ���� ������ ��� ������ ���̽ÿ�
select * from book where bookname like '%�߱�%';

-- ���������� �հ�
select sum(price) as "��������" from book;

-- ���������� ���� ��ѵ���
select max(price) "�ְ� ����" from book;
select * from book where price = (select max(price) from book);
-- ���������� ���� �����ΰ�
select min(price) "������ ����" from book;
select * from book where price = (select min(price) from book);
