SELECT first_name, last_name, genres
FROM patron RIGHT JOIN
	(SELECT x.book_id, loan_id, patron_id, genres
	FROM loan RIGHT JOIN 
		(SELECT book_id, genres FROM book LEFT JOIN genre ON book.genre_id = genre.genre_id) AS x
	ON loan.book_id = x.book_id
	WHERE (loan_id IS NOT NULL)) AS y
ON patron.patron_id = y.patron_id;