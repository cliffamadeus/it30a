CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    book_title VARCHAR(50) NOT NULL,
    book_author VARCHAR(100) NOT NULL,
    book_category VARCHAR(50) NOT NULL,
    book_created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO books (book_title,book_author,book_category) VALUES 
("Project Hail Mary","Andy Weir","Science Fiction"),
("Jurassic Park","Michael Crichton","Science Fiction"),
("1984","George Orwell","Science Fiction");

CREATE TABLE borrow(
    borrow_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    book_id INT NOT NULL,

    borrow_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    borrow_return_date TIMESTAMP NULL DEFAULT NULL,

    CONSTRAINT fk_borrow_student FOREIGN KEY (student_id)
        REFERENCES students(student_id),

    CONSTRAINT fk_borrow_book FOREIGN KEY (book_id)
        REFERENCES books(book_id)
);

INSERT INTO borrow (student_id,book_id) VALUES 
(1,2),
(2,1),
(3,3);