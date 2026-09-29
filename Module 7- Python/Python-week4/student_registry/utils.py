from datetime import date


def get_deadline(year, month, day):
    return date(year, month, day)


def check_deadline(deadline):
    today = date.today()
    if today > deadline:
        return "Assignment is overdue"
    elif today == deadline:
        return "Assignment is due today"
    else:
        return "Assignment is not yet due"
