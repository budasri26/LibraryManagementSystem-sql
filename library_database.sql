CREATE DATABASE LibraryManagementSystem;

USE LibraryManagementSystem;

CREATE TABLE Member (
    Member_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    Address VARCHAR(255),
    Date_Of_Join DATE
);

CREATE TABLE Author (
    Author_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Bio TEXT
);

CREATE TABLE Librarian (
    Librarian_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    mail VARCHAR(100),
    Phone VARCHAR(15)
);

CREATE TABLE Book (
    Book_ID INT PRIMARY KEY,
    Title VARCHAR(150),
    Category VARCHAR(100),
    Publisher VARCHAR(100),
    Author_ID INT,
    FOREIGN KEY (Author_ID) REFERENCES Author(Author_ID)
);

CREATE TABLE Borrows (
    Borrow_ID INT PRIMARY KEY,
    Member_ID INT,
    Book_ID INT,
    Librarian_ID INT,
    Issue_Date DATE,
    Due_Date DATE,
    FOREIGN KEY (Member_ID) REFERENCES Member(Member_ID),
    FOREIGN KEY (Book_ID) REFERENCES Book(Book_ID),
    FOREIGN KEY (Librarian_ID) REFERENCES Librarian(Librarian_ID)
);

INSERT INTO Author VALUES
(1,'R.K. Narayan','Indian novelist'),
(2,'Chetan Bhagat','Indian author'),
(3,'J.K. Rowling','British author'),
(4,'Paulo Coelho','Brazilian author'),
(5,'Ruskin Bond','Indian writer'),
(6,'Dan Brown','American author');

INSERT INTO Member VALUES
(101,'Rahul','rahul@gmail.com','9876543210','Hyderabad','2026-01-10'),
(102,'Priya','priya@gmail.com','9876543211','Chennai','2026-02-15'),
(103,'Arjun','arjun@gmail.com','9876543212','Bangalore','2026-03-20'),
(104,'Sneha','sneha@gmail.com','9876543213','Mumbai','2026-04-12'),
(105,'Kiran','kiran@gmail.com','9876543214','Pune','2026-05-18'),
(106,'Divya','divya@gmail.com','9876543215','Vijayawada','2026-06-25');

INSERT INTO Librarian VALUES
(201,'Suresh','suresh@gmail.com','9123456780'),
(202,'Lakshmi','lakshmi@gmail.com','9123456781'),
(203,'Anitha','anitha@gmail.com','9123456783'),
(204,'Kumar','kumar@gmail.com','9123456784'),
(205,'Meena','meena@gmail.com','9123456785'),
(206,'Ravi','ravi@gmail.com','9123456782');

INSERT INTO Book VALUES
(301,'Malgudi Days','Fiction','Penguin',1),
(302,'Five Point Someone','Novel','Rupa',2),
(303,'Harry Potter','Fantasy','Bloomsbury',3),
(304,'The Alchemist','Adventure','HarperCollins',4),
(305,'The Blue Umbrella','Children','Rupa',5),
(306,'The Da Vinci Code','Thriller','Doubleday',6);

INSERT INTO Borrows VALUES
(401,101,301,201,'2026-07-01','2026-07-15'),
(402,102,302,202,'2026-07-03','2026-07-17'),
(403,103,303,203,'2026-07-05','2026-07-19'),
(404,104,304,204,'2026-07-07','2026-07-21'),
(405,105,305,205,'2026-07-09','2026-07-23'),
(406,106,306,206,'2026-07-11','2026-07-25');CREATE DATABASE LibraryManagementSystem;

USE LibraryManagementSystem;

CREATE TABLE Member (
    Member_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    Address VARCHAR(255),
    Date_Of_Join DATE
);

CREATE TABLE Author (
    Author_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Bio TEXT
);

CREATE TABLE Librarian (
    Librarian_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    mail VARCHAR(100),
    Phone VARCHAR(15)
);

CREATE TABLE Book (
    Book_ID INT PRIMARY KEY,
    Title VARCHAR(150),
    Category VARCHAR(100),
    Publisher VARCHAR(100),
    Author_ID INT,
    FOREIGN KEY (Author_ID) REFERENCES Author(Author_ID)
);

CREATE TABLE Borrows (
    Borrow_ID INT PRIMARY KEY,
    Member_ID INT,
    Book_ID INT,
    Librarian_ID INT,
    Issue_Date DATE,
    Due_Date DATE,
    FOREIGN KEY (Member_ID) REFERENCES Member(Member_ID),
    FOREIGN KEY (Book_ID) REFERENCES Book(Book_ID),
    FOREIGN KEY (Librarian_ID) REFERENCES Librarian(Librarian_ID)
);

INSERT INTO Author VALUES
(1,'R.K. Narayan','Indian novelist'),
(2,'Chetan Bhagat','Indian author'),
(3,'J.K. Rowling','British author'),
(4,'Paulo Coelho','Brazilian author'),
(5,'Ruskin Bond','Indian writer'),
(6,'Dan Brown','American author');

INSERT INTO Member VALUES
(101,'Rahul','rahul@gmail.com','9876543210','Hyderabad','2026-01-10'),
(102,'Priya','priya@gmail.com','9876543211','Chennai','2026-02-15'),
(103,'Arjun','arjun@gmail.com','9876543212','Bangalore','2026-03-20'),
(104,'Sneha','sneha@gmail.com','9876543213','Mumbai','2026-04-12'),
(105,'Kiran','kiran@gmail.com','9876543214','Pune','2026-05-18'),
(106,'Divya','divya@gmail.com','9876543215','Vijayawada','2026-06-25');

INSERT INTO Librarian VALUES
(201,'Suresh','suresh@gmail.com','9123456780'),
(202,'Lakshmi','lakshmi@gmail.com','9123456781'),
(203,'Anitha','anitha@gmail.com','9123456783'),
(204,'Kumar','kumar@gmail.com','9123456784'),
(205,'Meena','meena@gmail.com','9123456785'),
(206,'Ravi','ravi@gmail.com','9123456782');

INSERT INTO Book VALUES
(301,'Malgudi Days','Fiction','Penguin',1),
(302,'Five Point Someone','Novel','Rupa',2),
(303,'Harry Potter','Fantasy','Bloomsbury',3),
(304,'The Alchemist','Adventure','HarperCollins',4),
(305,'The Blue Umbrella','Children','Rupa',5),
(306,'The Da Vinci Code','Thriller','Doubleday',6);

INSERT INTO Borrows VALUES
(401,101,301,201,'2026-07-01','2026-07-15'),
(402,102,302,202,'2026-07-03','2026-07-17'),
(403,103,303,203,'2026-07-05','2026-07-19'),
(404,104,304,204,'2026-07-07','2026-07-21'),
(405,105,305,205,'2026-07-09','2026-07-23'),
(406,106,306,206,'2026-07-11','2026-07-25');