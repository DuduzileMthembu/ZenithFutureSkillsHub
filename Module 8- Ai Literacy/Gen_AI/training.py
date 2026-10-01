#Create a student class with properties and methods. in method 1 display_students and method2 must show students.


class Student:
    def __init__(self, name, age, grade):
        self.name = name
        self.age = age
        self.grade = grade


    def display_students(self):
        print(f"Name: {self.name}, Age: {self.age}, Grade: {self.grade}")

    def show_students(self):
        return f"{self.name} is {self.age} years old and in grade {self.grade}."


#create a class called fruits that has a list that holds fruits and a method to add fruits called add_fruits and a method to view the fruits called display_fruits

class Fruits:
    def __init__(self):
        self.fruit_list = []

    def add_fruits(self, fruit):
        self.fruit_list.append(fruit)
        

    def display_fruits(self):
    
        print("Fruits in the list:")
        for fruit in self.fruit_list:
            print(f"- {fruit}")
         


#create a class called vegetables that has a list that holds vegetables and a method to add vegetables called display_vegetables

class Vegetables: 
    def __init__(self):
        self.vegetable_list = []

    def add_vegetables(self, vegetable):
        self.vegetable_list.append(vegetable)
        

        def display_vegetables(self): 
            print("Vegetables in the list:")
            for vegetable in self.vegetable_list:
                print(f"- {vegetable}")

#create a class called meat that has a list that holds meat and a method to add meat called add_meat and a method to view the meat called display_meats
class meat:
    def __init__(self):
        self.meat_list = []

    def add_meat(self, meat):
        self.meat_list.append(meat)
        

    def display_meats(self):
        print("Meats in the list:")
        for meat in self.meat_list:
            print(f"- {meat}")

#create a factory class called shopping list that has a method to create fruits object and a method to create a vegetable object and a method to create a meat object

 
class ShoppingList:
    def __init__(self):
        self.fruits = Fruits()
        self.vegetables = Vegetables()
        self.meats = meat()

    def create_fruits(self):
        return self.fruits
    def create_vegetables(self):
        return self.vegetables
    def create_meats(self):
        return self.meats


#create an object of type meat

my_meat = ShoppingList().create_meats()
my_meat.add_meat("Chicken")
my_meat.add_meat("Beef")
my_meat.add_meat("Pork")
my_meat.add_meat("Lamb")
my_meat.display_meats()


#add a chocolate factory class and it must have a chocolote list create different types of chocolate objects

class ChocolateFactory:
    def __init__(self):
        self.chocolate_list = []

    def create_chocolate(self, chocolate):
        self.chocolate_list.append(chocolate)
        print(f"{chocolate} has been added to the chocolate list.")

    def display_chocolates(self):
            print("Chocolates in the list:")
            for chocolate in self.chocolate_list:
                print(f"- {chocolate}")
       
