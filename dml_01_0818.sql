select bookname, price from book;
--중복제거
select distinct publisher from book;

select * from book where price >=15000 and price <=23000;

select * from book where price between 15000 and 23000;

select publisher, price from book where bookname = '축구의 역사';

--패턴(include) 권장
select publisher, price from book where bookname like '축구의 역사';
select * from book where bookname like '%축구%';

-- book테이블에서 야구에 관한 도서의 모든 정보를 보이시오
select * from book where bookname like '%야구%';

-- 도서가격의 합계
select sum(price) as "도서총합" from book;

-- 도서가격중 가장 비싼도서
select max(price) "최고가 도서" from book;
select * from book where price = (select max(price) from book);
-- 도서가격중 가장 저가인것
select min(price) "최저가 도서" from book;
select * from book where price = (select min(price) from book);
