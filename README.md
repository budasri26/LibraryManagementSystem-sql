# Library Management System - SQL Database

## 📚 Project Overview

The **Library Management System** is a MySQL database designed to manage books, authors, members, librarians, and book borrowing information. It stores and organizes library data using relational database concepts such as primary keys, foreign keys, constraints, and table relationships.

## 🗄️ Database

**Database Name:** `LibraryManagementSystem`

The database contains **5 tables**:

- **Member** – Stores member details such as Member ID, name, email, phone, address, and date of joining.
- **Author** – Stores author information including Author ID, name, and biography.
- **Librarian** – Stores librarian details including Librarian ID, name, email, and phone.
- **Book** – Stores book details such as Book ID, title, category, publisher, and Author ID.
- **Borrows** – Stores borrowing transactions including Borrow ID, Member ID, Book ID, Librarian ID, issue date, and due date.

## 🔗 Database Relationships

- `Author` → `Book` using `Author_ID`
- `Member` → `Borrows` using `Member_ID`
- `Book` → `Borrows` using `Book_ID`
- `Librarian` → `Borrows` using `Librarian_ID`

The **Borrows** table connects members, books, and librarians to maintain borrowing records.

## 🔑 Database Concepts Used

- DDL – `CREATE DATABASE`, `CREATE TABLE`
- DML – `INSERT`
- DQL – `SELECT`
- Primary Key
- Foreign Key
- Constraints
- Relational Database
- Data Types
- Table Relationships

## 📊 Sample Data

The database contains sample records for:

- 6 Members
- 6 Authors
- 6 Librarians
- 6 Books
- 6 Borrowing Transactions

## ▶️ How to Run

1. Open **MySQL / MySQL Workbench**.
2. Open `library_database.sql`.
3. Execute the SQL commands.
4. Select the `LibraryManagementSystem` database.
5. Use `SHOW TABLES;` to view the tables.
6. Use `SELECT * FROM TableName;` to view the data.

Example:

```sql
CREATE DATABASE LibraryManagementSystem;

USE LibraryManagementSystem;

SHOW TABLES;