class student_list:
    def __init__(self):
        self.student_list = []

    def add_student(self, student):
        self.student_list.append(student)
        return self.student_list

    def remove_student(self, student_number):
        self.student_list = [
            student
            for student in self.student_list
            if student.student_number != student_number
        ]

    def display_students(self, student_list):
        for student in student_list:
            student.display_student_info()

    def find_student(self, student_number):
        for student in self.student_list:
            if student.student_number == student_number:
                return student
        return None
