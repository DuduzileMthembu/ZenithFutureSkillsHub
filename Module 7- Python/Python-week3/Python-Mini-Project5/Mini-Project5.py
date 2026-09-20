#Vehicle Management System

class Vehicle:
    def __init__(self,name):
        self.name = name

    def Movement(self):
        print("Vehicle is moving")


class Car(Vehicle) :
    def Movement(self):
        print(self.name, "Moves on 4 wheels")

class Bike(Vehicle) :
    def Movement(self):
        print(self.name, "Moves on 2 wheels")

Car1 = Car("Audi")
Car2 = Car("BMW")
Car3 = ("Mercedes Benz")
Bike1 = Bike("Yamaha")
Bike2 = Bike("BMX")
Bike3 = Bike("Mountain Bike")

Car1.Movement()
Car2.Movement()
Car3.Movement()
Bike1.Movement()
Bike2.Movement()