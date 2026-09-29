class Student:
    def __init__(self, name, student_number, course):
        self.marks = []
        self.attendance = 0
        self.assignment_deadline = None
        self.name = name
        self.student_number = student_number
        self.course = course

    def display_student_info(self):
        print(f"Name: {self.name}")
        print(f"Student Number: {self.student_number}")
        print(f"Course: {self.course}")
        print(f"Marks: {self.marks}")
        print(f"Assignment Deadline: {self.assignment_deadline}")
        print(f"Attendance: {self.attendance}")

    def add_marks(self, marks):
        self.marks.append(marks)

    def update_attendance(self):
        self.attendance += 1

    def student_type(self):
        print("This is a generic student type. Please specify if the student is full-time or part-time.")


class full_time_student(Student):
    def student_type(self):
        print("This is a full-time student.")


class part_time_student(Student):
    def student_type(self):
        print("This is a part-time student.")
