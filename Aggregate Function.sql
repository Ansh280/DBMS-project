SELECT COUNT(*) AS total_books FROM BOOKS;

SELECT SUM(price) AS total_book_value FROM BOOKS;

SELECT AVG(price) AS average_book_price FROM BOOKS;

SELECT MIN(price) AS lowest_price FROM BOOKS;

SELECT MAX(price) AS highest_price FROM BOOKS;

SELECT category, COUNT(*) AS book_count 
FROM BOOKS
GROUP BY category;

SELECT category, SUM(price) AS total_value 
FROM BOOKS
GROUP BY category;

SELECT user_id, COUNT(book_no) AS total_issued_books
FROM REPORTS
GROUP BY user_id;
