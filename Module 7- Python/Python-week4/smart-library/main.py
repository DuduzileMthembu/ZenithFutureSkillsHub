from books import FictionBook, TextBook, ReferenceBook
from library import Library
from storage import save_books, load_books
from utils import get_deadline


# Create the library
library = Library()


# Load previously saved books
saved_books = load_books()

for book in saved_books:
    print(book)


# Keep showing the menu until the user chooses Exit
while True:

    print("\n====== SMART PERSONAL LIBRARY ======")
    print("1. Add Book")
    print("2. View Books")
    print("3. Search Book")
    print("4. Borrow Book")
    print("5. Return Book")
    print("6. Save Library")
    print("7. Exit")

    choice = input("Choose an option: ")

    # Add a new book
    if choice == "1":

        title = input("Enter book title: ")
        author = input("Enter author: ")

        print("\nChoose category:")
        print("1. Fiction")
        print("2. Textbook")
        print("3. Reference")

        category = input("Choose category: ")

        book_id = len(library.books) + 1

        if category == "1":

            book = FictionBook(title, author, book_id)

        elif category == "2":

            book = TextBook(title, author, book_id)

        elif category == "3":

            book = ReferenceBook(title, author, book_id)

        else:

            print("Invalid category.")
            continue

        library.add_book(book)

    # View all books
    elif choice == "2":

        library.view_books()

    # Search for a book
    elif choice == "3":

        title = input("Enter title to search: ")

        book = library.search_book(title)

        if book:

            book.display()

        else:

            print("Book not found.")

    # Borrow a book
    elif choice == "4":

        title = input("Enter book title: ")

        book = library.search_book(title)

        if book:

            book.borrow()

            if book.is_borrowed:

                book.return_date = get_deadline(14)

                print("Return by:", book.return_date)

        else:

            print("Book not found.")

    # Return a book
    elif choice == "5":

        title = input("Enter book title: ")

        book = library.search_book(title)

        if book:

            book.return_book()

        else:

            print("Book not found.")

    # Save the library
    elif choice == "6":

        save_books(library.books)

    # Exit the program
    elif choice == "7":

        save_books(library.books)

        print("Goodbye!")

        break

    # Handle invalid menu choices
    else:

        print("Invalid choice. Please try again.")
