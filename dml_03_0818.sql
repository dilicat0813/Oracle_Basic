-- insert into

-- 부분 삽입
select * from book;
desc book;
insert into book(bookid, publisher, bookname) values (11, '스포츠북', '스포츠 의학');

-- 대량 삽입(bulk insert)
select * from imported_book; 
-- book테이블의 모든 테이블을 imported_book으로 삽입
insert into imported_book(bookid, bookname, publisher, price) 
select bookid, bookname, publisher, price
from book;

insert into imported_book 
select *
from book;
--중복제거
SELECT DISTINCT * FROM imported_book;

-- 데이터 삭제
delete from imported_book;

-- 컬럼명을 명시(생략)하여 bookid 7에서 14번까지의 데이터만 삽입
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
update customer set address='대한민국 분당' where custid = 5;

--주소 가져오기
select address from customer where name = '김연아';

--대상에 가져온 주소 넣기
update customer 
set address=(select address from customer where name = '김연아') 
where name like '박세리';

select * from orders;
Alter table orders add bookname varchar2(40);

-- 이너조인
update orders
set bookname=(select bookname from book where book.bookid=orders.bookid);

alter table orders drop column bookname;

select * from imported_book  order by bookid;

delete from imported_book where bookid=11;

--내림차순, 출판사 오름차순
select * from book order by price desc, publisher asc;

