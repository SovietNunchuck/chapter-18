UPDATE book
	SET available = 0
	WHERE (book_id = 16);
    
INSERT INTO loan (patron_id, date_out, book_id)
	VALUES (1, CURDATE(), 16);

UPDATE patron
	SET loan_id = (SELECT loan_id FROM loan WHERE (patron_id = 1))
    WHERE (patron_id = 1);