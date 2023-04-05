CREATE TABLE book (name VARCHAR NOT NULL, author_id BIGINT NOT NULL);
CREATE TABLE author (name VARCHAR NOT NULL, id BIGINT NOT NULL PRIMARY KEY);
INSERT INTO author values ('JRR Tolkien', 1);
INSERT INTO author values ('Daniel Defoe', 2);
INSERT INTO book values ('Hobbit', 1);
INSERT INTO book values ('LOTR', 1);
INSERT INTO book values ('Robinson Crusoe', 2);
ALTER TABLE book ADD FOREIGN KEY(author_id) REFERENCES author(id);
SELECT author.name, book.name FROM book LEFT JOIN author ON book.author_id = author.id;
SELECT author.name, book.name FROM book LEFT JOIN author ON book.author_id = author.id WHERE author.name = 'JRR Tolkien';

