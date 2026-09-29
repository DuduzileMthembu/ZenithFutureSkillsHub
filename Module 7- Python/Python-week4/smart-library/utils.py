from datetime import date, timedelta


def get_deadline(days):

    today = date.today()

    deadline = today + timedelta(days=days)

    return deadline


# If a book can be borrowed for 14 days:
deadline = get_deadline(14)

print(deadline)
