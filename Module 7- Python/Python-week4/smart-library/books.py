class Book:

    def __init__(self, title, author, book_id):
        self.title = title
        self.author = author
        self.book_id = book_id
        self.is_borrowed = False
        self.borrow_date = None
        self.return_date = None

    def display(self):
        print(f"{self.book_id}. {self.title} - {self.author}")

    def borrow(self):
        if self.is_borrowed:
            print("This book is already borrowed.")
        else:
            self.is_borrowed = True
            print(f"{self.title} has been borrowed.")

    def return_book(self):
        if self.is_borrowed:
            self.is_borrowed = False
            self.borrow_date = None
            self.return_date = None
            print(f"{self.title} has been returned.")
        else:
            print("This book was not borrowed.")

    def get_action(self):
        return "Borrow or return this book."


class FictionBook(Book):

    def get_action(self):
        return "Recommended for entertainment and storytelling."


class TextBook(Book):

    def get_action(self):
        return "Useful for learning and studying."


class ReferenceBook(Book):

    def get_action(self):
        return "Reference books should be used in the library."
