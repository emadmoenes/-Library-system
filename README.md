# Library System

## Overview

This project is a simple library management system written in Dart. It allows users to borrow and return books, while maintaining a record of all users and books in the library.

## Features

1. **Books Management**:

   - Add books to the library.
   - Borrow books.
   - Return books.
   - Display information about all books.

2. **Users Management**:

   - Add users to the library.
   - Display information about all users.

3. **Library Operations**:
   - Borrowing books with validation to ensure books are available.
   - Returning books with validation to check the borrowing status.
   - Displaying the overall state of the library.

## Classes

### 1. `Book`

- Attributes:
  - `title`: The title of the book.
  - `id`: Unique identifier for the book.
  - `isBorrowed`: Boolean indicating if the book is borrowed.
- Method:
  - `displayInfo()`: Displays the details of the book.

### 2. `User`

- Attributes:
  - `name`: The name of the user.
  - `id`: Unique identifier for the user.
- Method:
  - `displayInfo()`: Displays the details of the user.

### 3. `Library`

- Attributes:
  - `books`: List of all books in the library.
  - `users`: List of all users in the library.
- Methods:
  - `addBook(Book book)`: Adds a book to the library.
  - `addUser(User user)`: Adds a user to the library.
  - `borrowBook(int bookId, int userId)`: Allows a user to borrow a book.
  - `returnBook(int bookId, int userId)`: Allows a user to return a book.
  - `displayInfo()`: Displays the current state of the library.
