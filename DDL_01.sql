-- MADANG �����ͺ��̽� 
CREATE TABLE Book (
bookid NUMBER(2) PRIMARY KEY,
bookname VARCHAR2(40),
publisher VARCHAR2(40),
price NUMBER(8)
);

-- �� ���� DB
CREATE TABLE Customer (
custid NUMBER(2) PRIMARY KEY,
name VARCHAR2(40),
address VARCHAR2(50),
phone VARCHAR2(20)
);

-- �ֹ� ���� DB
CREATE TABLE Orders (
orderid NUMBER(2) PRIMARY KEY,
custid NUMBER(2) REFERENCES Customer(custid),
bookid NUMBER(2) REFERENCES Book(bookid),
saleprice NUMBER(8) ,
orderdate DATE
);

-- REFERENCES ���̺�(�÷�) --> ����

-- Imported_book (bookid(����), bookname, publisher, price)
CREATE TABLE Imported_Book (
bookid NUMBER,
bookname VARCHAR2(40),
publisher VARCHAR2(40),
price NUMBER(8) 
);


