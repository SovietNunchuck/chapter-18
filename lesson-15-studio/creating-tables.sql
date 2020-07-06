CREATE TABLE book (
	book_id INT AUTO_INCREMENT PRIMARY KEY,
    author_id INT,
    title VARCHAR(255),
    isbn INT,
    available BOOL,
    genre_id INT
);

CREATE TABLE author (
	author_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    birthday DATE,
    deathday DATE
);

CREATE TABLE patron (
	patron_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    loan_id INT
);

CREATE TABLE reference_books (
	reference_id INT AUTO_INCREMENT PRIMARY KEY,
    edition INT,
    book_id INT,
    FOREIGN KEY (book_id) REFERENCES book(book_id)
    ON UPDATE SET NULL
    ON DELETE SET NULL
);

INSERT INTO reference_books(edition, book_id)
VALUE (5, 32);

CREATE TABLE genre (
	genre_id INT PRIMARY KEY,
    genres VARCHAR(100)
);

CREATE TABLE loan (
	loan_id INT AUTO_INCREMENT PRIMARY KEY,
    patron_id INT,
    date_out DATE,
    date_in DATE,
    book_id INT,
    FOREIGN KEY (book_id) REFERENCES book(book_id)
	ON UPDATE SET NULL
    ON DELETE SET NULL
);
