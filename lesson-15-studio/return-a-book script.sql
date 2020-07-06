UPDATE book
	SET available = 1
	WHERE (book_id = 3);
    
UPDATE loan
	SET date_in = CURDATE()
    WHERE (patron_id = 17 AND book_id = 3);
    
UPDATE patron
	SET loan_id = null
	WHERE (patron_id = 17);