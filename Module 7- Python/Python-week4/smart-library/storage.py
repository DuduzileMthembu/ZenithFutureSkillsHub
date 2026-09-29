import json


def save_books(books):

    data = []

    for book in books:

        book_data = {
            "id": book.book_id,
            "title": book.title,
            "author": book.author,
            "borrowed": book.is_borrowed
        }

        data.append(book_data)

    with open("library.json", "w") as file:
        json.dump(data, file, indent=4)

    print("Library saved successfully.")


def load_books():

    try:

        with open("library.json", "r") as file:
            data = json.load(file)

        return data

    except FileNotFoundError:

        return []
