SELECT title, isbn
	FROM book INNER JOIN genre ON (book.genre_id = genre.genre_id)
	WHERE (genres LIKE 'mystery');
    
SELECT title, first_name, last_name 
	FROM book INNER JOIN author ON (book.author_id = author.author_id)
    WHERE (deathday IS NULL);