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

## File Details

- `main.py` – Runs the menu-driven application
- `books.py` – Defines the book classes and borrowing behavior
- `library.py` – Contains the library logic for adding, viewing, and searching books
- `storage.py` – Saves and loads book data in JSON format
- `library.json` – Stores the library data on disk
- `utils.py` – Contains helper functions such as deadline calculation

## How to Run

1. Open the project folder in a terminal.
2. Ensure Python is installed.
3. Run the following command:

```bash
python main.py
```

## Menu Options

When the program starts, it displays this menu:

1. Add Book
2. View Books
3. Search Book
4. Borrow Book
5. Return Book
6. Save Library
7. Exit

## Example Workflow

- Add a fiction book
- View the library
- Search for a title
- Borrow a book
- Receive a return deadline of 14 days
- Return the book
- Save the library to preserve changes

## Notes

- The library uses a simple JSON file for storage.
- Borrowed books are tracked with a status flag.
- This project is ideal for learning object-oriented programming, file handling, and basic Python application design.

## License

This project is intended for educational use and learning purposes.
