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
Bike1 = Bike("Yamaha")
Bike2 = Bike("BMX")

Car1.Movement()
Car2.Movement()
Bike1.Movement()
Bike2.Movement()