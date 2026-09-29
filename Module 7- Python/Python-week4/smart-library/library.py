class Library:

    def __init__(self):
        self.books = []

    def add_book(self, book):
        self.books.append(book)
        print("Book added successfully.")

    def view_books(self):

        if len(self.books) == 0:
            print("There are no books in the library.")
            return

        print("\n====== LIBRARY BOOKS ======")

        for book in self.books:
            book.display()

    def search_book(self, title):

        for book in self.books:

            if book.title.lower() == title.lower():
                return book

        return None
