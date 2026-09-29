from student import Student, full_time_student, part_time_student
from student_list import student_list
from storage import save_students, load_students, delete_student_record
from utils import get_deadline, check_deadline

student_list = student_list()


def register_students():
    name = input("Enter student name: ")
    student_number = int(input("Enter student number: "))
    course = input("Enter student course: ")
    print("Select student type:")
    print("1. Full-time student")
    print("2. Part-time student")
    choice = int(input("Enter your choice: "))

    if choice == 1:
        student = full_time_student(name, student_number, course)
    elif choice == 2:
        student = part_time_student(name, student_number, course)
    else:
        student = Student(name, student_number, course)

    student.student_type()
    return student


def view_student_details(student_number):
    student = student_list.find_student(student_number)
    if student:
        student.display_student_info()
    else:
        print("Student not found.")


def add_marks(student_number, marks):
    student = student_list.find_student(student_number)
    if student:
        student.add_marks(marks)
        print("Marks added successfully.")
    else:
        print("Student not found.")


def record_attendance(student_number):
    student = student_list.find_student(student_number)
    if student:
        student.update_attendance()
        print("Attendance recorded successfully.")
    else:
        print("Student not found.")


print("======SMART STUDENT MANAGEMENT SYSTEM=======")
while True:
    print("\n1. Register Student")
    print("2. View Students")
    print("3. View Student Details")
    print("4. Add Marks")
    print("5. Record Attendance")
    print("6. Set Assignment Deadline")
    print("7. Save Students")
    print("8. Delete Students")
    print("9. Exit")

    choice = int(input("Enter your choice: "))
    if choice == 1:
        student = register_students()
        student_list.add_student(student)
    elif choice == 2:
        loaded_students = load_students()
        students_by_number = {
            student.student_number: student for student in loaded_students
        }
        students_by_number.update({
            student.student_number: student
            for student in student_list.student_list
        })
        student_list.student_list = list(students_by_number.values())
        student_list.display_students(student_list.student_list)
    elif choice == 3:
        student_number = int(input("Enter student number: "))
        view_student_details(student_number)
    elif choice == 4:
        student_number = int(input("Enter student number: "))
        while True:
            try:
                marks = float(input("Enter marks: "))
                break
            except ValueError:
                print("Invalid mark. Please enter a numeric value.")
        add_marks(student_number, marks)
    elif choice == 5:
        student_number = int(input("Enter student number: "))
        record_attendance(student_number)
    elif choice == 6:
        student_number = int(input("Enter student number: "))
        student = student_list.find_student(student_number)
        if student:
            year = int(input("Enter deadline year: "))
            month = int(input("Enter deadline month: "))
            day = int(input("Enter deadline day: "))
            student.assignment_deadline = get_deadline(year, month, day)
            print(f"Assignment deadline set for {student.name}.")
            print(check_deadline(student.assignment_deadline))
        else:
            print("Student not found.")
    elif choice == 7:
        save_students(student_list.student_list)
    elif choice == 8:
        student_number = int(input("Enter student number: "))
        delete_student_record(student_number)
        student_list.remove_student(student_number)
    elif choice == 9:
        break
    else:
        print("Invalid choice.")
