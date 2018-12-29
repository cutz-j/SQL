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