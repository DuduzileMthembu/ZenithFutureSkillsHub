# Smart Library

A simple Python-based command-line library management system that helps users add, view, search, borrow, and return books.

## Project Description

This project simulates a personal smart library where a user can manage a collection of books from the terminal. The program supports multiple book categories, tracks whether a book is borrowed, and saves the library data to a JSON file so information remains available when the program runs again.

## Features

- Add new books to the library
- Choose between three types of books:
  - Fiction
  - Textbook
  - Reference
- View all books in the library
- Search for a book by title
- Borrow a book and set a due date
- Return a borrowed book
- Save the library to a file
- Load previously saved books when the program starts

## Project Structure

```text
smart-library/
├── books.py
├── library.py
├── library.json
├── main.py
├── README.md
├── storage.py
└── utils.py
```
