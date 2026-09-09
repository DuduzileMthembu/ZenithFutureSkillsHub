#Employee Attendance Tracker

Employees={
    "Lerato Dhlamini" : 8.00,
    "Banele Nkosi" : 8.15,
    "Itumeleng Nkuta" : 8.45,
    "Hloni Mokoena" : 8.30,
    "Teboho Mashaba" : 9.15,
    "Tsholofelo Mthembu" : 8.25,
    "Katleho Mosia" : 9.12,
    "Thulani Nkosi" : 8.16,
    "Kabelo Mokoena" : 8.32,
    "Thando Khumalo" : 8.50,
}
total=0

print("=========Employee Attendance=========")
for name, time in Employees.items():
    total += time

    if time >= 8.30 :
        print(name, "-Late Arrival:", time)
    else:
        print(name, "-On Time:", time)

average = total /len(Employees)

print("=====================================")
print("Average Time :", average)