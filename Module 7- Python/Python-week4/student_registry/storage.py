import json

from student import Student


def save_students(students):
    data = []

    for student in students:
        student_data = {
            'name': student.name,
            'student_number': student.student_number,
            'course': student.course,
            'marks': student.marks,
            'assignment_deadline': str(student.assignment_deadline),
            'attendance': student.attendance
        }
        data.append(student_data)

    with open('students.json', 'w') as file:
        json.dump(data, file, indent=4)

    print("Students saved to students.json")


def load_students():
    try:
        with open('students.json', 'r') as file:
            data = json.load(file)

        students = []

        for student_data in data:
            student = Student(
                student_data['name'],
                student_data['student_number'],
                student_data['course']
            )

            student.marks = student_data['marks']
            student.assignment_deadline = student_data['assignment_deadline']
            student.attendance = student_data['attendance']

            students.append(student)

        print("Students loaded from students.json")
        return students

    except FileNotFoundError:
        print("students.json not found. Starting with an empty list.")
        return []


def delete_student_record(student_id):
    try:
        with open('students.json', 'r') as file:
            data = json.load(file)

        new_data = []

        for student in data:
            if student['student_number'] != student_id:
                new_data.append(student)

        with open('students.json', 'w') as file:
            json.dump(new_data, file, indent=4)

        print(f"Student record with Student Number {student_id} deleted")

    except FileNotFoundError:
        print("students.json not found. No records available.")
