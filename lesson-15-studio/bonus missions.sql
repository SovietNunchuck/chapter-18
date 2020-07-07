SELECT genres, COUNT(*)
FROM book INNER JOIN genre ON book.genre_id = genre.genre_id
GROUP BY genres;