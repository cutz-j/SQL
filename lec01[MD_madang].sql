SELECT bookname, publisher
FROM Book;

SELECT bookname, publisher FROM Book WHERE price >= 10000;

SELECT bookid, bookname, publisher, price FROM Book;
SELECT * FROM Book;
SELECT publisher FROM Book;
SELECT DISTINCT publisher FROM Book;
SELECT * FROM Book WHERE price < 20000;
SELECT * FROM Book WHERE price >= 10000 AND  price <= 20000;
SELECT * FROM Book WHERE publisher in ('굿스포츠', '대한미디어');
SELECT * FROM Book WHERE bookname LIKE '축구의 역사';
SELECT * FROM Book WHERE bookname LIKE '%축구%' AND price >= 20000;
SELECT * FROM Book ORDER BY price DESC, publisher ASC;
SELECT SUM(saleprice) FROM Orders;
SELECT custid, COUNT(*) AS 도서수량, SUM(saleprice) AS 총액
FROM Orders GROUP BY custid ORDER BY custid;
SELECT * FROM Customer, Orders WHERE Customer.custid=Orders.custid ORDER BY Customer.custid;