-- Create the database (for SQLite, this will create a file-based DB)
PRAGMA foreign_keys = ON;

--Database
use database ganesh

-- Create the Books table
CREATE TABLE IF NOT EXISTS Books (
    ISBN TEXT PRIMARY KEY,
    title TEXT NOT NULL,
    author TEXT NOT NULL,
    language TEXT NOT NULL,
    genre TEXT NOT NULL,
    format TEXT NOT NULL CHECK (format IN ('Hardcover', 'Paperback', 'Ebook', 'Audiobook'))
);

-- Insert sample data
INSERT INTO Books (ISBN, title, author, language, genre, format) VALUES
('978-0143127741', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 'English', 'History', 'Paperback'),
('978-0062315007', 'The Alchemist', 'Paulo Coelho', 'English', 'Fiction', 'Hardcover'),
('978-0307474278', 'Thinking, Fast and Slow', 'Daniel Kahneman', 'English', 'Psychology', 'Ebook'),
('978-0553293357', 'Dune', 'Frank Herbert', 'English', 'Science Fiction', 'Paperback'),
('978-0441172719', 'Dune Messiah', 'Frank Herbert', 'English', 'Science Fiction', 'Paperback');

-- Select data to verify
SELECT * FROM Books;
