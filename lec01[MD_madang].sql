SELECT bookname, publisher
FROM Book;

SELECT bookname, publisher FROM Book WHERE price >= 10000;

SELECT bookid, bookname, publisher, price FROM Book;
SELECT * FROM Book;
SELECT publisher FROM Book;
SELECT DISTINCT publisher FROM Book;
SELECT * FROM Book WHERE price < 20000;
SELECT * FROM Book WHERE price >= 10000 AND  price <= 20000;
SELECT * FROM Book WHERE publisher in ('�½�����', '���ѹ̵��');
SELECT * FROM Book WHERE bookname LIKE '�౸�� ����';
SELECT * FROM Book WHERE bookname LIKE '%�౸%' AND price >= 20000;
SELECT * FROM Book ORDER BY price DESC, publisher ASC;
SELECT SUM(saleprice) FROM Orders;
SELECT custid, COUNT(*) AS ��������, SUM(saleprice) AS �Ѿ�
FROM Orders GROUP BY custid ORDER BY custid;
SELECT * FROM Customer, Orders WHERE Customer.custid=Orders.custid ORDER BY Customer.custid;

SELECT name, SUM(saleprice) FROM Customer, Orders WHERE Customer.custid=Orders.custid 
GROUP BY customer.name ORDER BY customer.name;

SELECT Customer.name, book.bookname FROM Customer, Orders, Book
WHERE Customer.custid=Orders.custid AND Orders.bookid=Book.bookid AND Book.price=20000;
SELECT bookname FROM Book WHERE price=(SELECT MAX(price) FROM Book);
SELECT name FROM customer WHERE custid IN
(SELECT custid FROM orders WHERE bookid IN
(SELECT bookid FROM book WHERE publisher='���ѹ̵��'));

SELECT publisher FROM Book b1 WHERE b1.price > 
(SELECT avg(b2.price) FROM Book b2 WHERE b2.publisher=b1.publisher);
SELECT name FROM Customer MINUS
SELECT name FROM Customer WHERE custid IN (SELECT custid FROM Orders);