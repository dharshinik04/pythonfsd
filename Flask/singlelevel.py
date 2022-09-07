# * Inheritance
# Parent
# class Person():
#     def __init__(self, name, number) -> None:
#         self.name = name
#         self.number = number

#     def greet(self):
#         print(f"{self.name} says hello, {self.number}")

#  * Child - without inheritance
# class Employee():
#     def __init__(self, salary, post) -> None:
#         self.salary = salary
#         self.post = post

#     def details(self):
#         print(f"Hello my post is {self.post} at {self.salary}")


# * child with inheritance
# class Employee(Person):
#     empCount = 0

#     def __init__(self, name, number, salary, post) -> None:
#         Person.__init__(self, name, number)
#         self.salary = salary
#         self.post = post

#     def details(self):
#         print(f"Hello my post is {self.post} at {self.salary}. ", end="")
#         Person.greet(self)

#     @classmethod
#     def iec(cls, val):
#         cls.empCount += val


# obj1 = Employee("Akshay", 12321, 3456, "Analyst")
# obj1.details()

# class Engine():
#     def __init__(self, volume, ft) -> None:
#         self.volume = volume
#         self.ft = ft

#     def start(self):
#         print(
#             f"Engine with {self.volume} volume is started, need more {self.ft}")


# class Car(Engine):
#     def __init__(self, modelNo, price, volume, ft) -> None:
#         self.modelNo = modelNo
#         self.price = price
#         Engine.__init__(self, volume, ft)

#     def start(self):
#         print(
#             f"Engine with {self.volume} volume is started, need more {self.ft}")


# var1 = Car("12df", 342, 23, "Pet")
# var1.start()

# Try this
# ? first make a person class with features like name , dob ,country
# * Engineer Class which inherits Person class and has new features like greet and perform action
# * Doctor class which inherits Person class and has new features like greet and perform action

# try this after above
# ! Make CEO class which enherits Engineer class

# * Polymorphysm

# class Engine():
#     def __init__(self, volume, ft) -> None:
#         self.volume = volume
#         self.ft = ft

#     def start(self):
#         print(
#             f"Starting Engine")


# class Car(Engine):
#     def __init__(self, modelNo, price, volume, ft) -> None:
#         self.modelNo = modelNo
#         self.price = price
#         Engine.__init__(self, volume, ft)

#     def start(self):
#         print(
#             f"Starting car")


# obj1 = Engine(23, "PET")
# obj2 = Car("hj32", 23, 12, 45)

# obj1.start()

# obj2.start()

# * filter Function
# arr = [{'name': "Akshay", 'id': 1}, {
#     'name': "Lakshay", 'id': 2}, {'name': "Rohan", 'id': 3}, ]

# ? any ideas ?
# * search dictionary with id = 1
# result = {}
# for item in arr:
#     if item['id'] == 1:
#         result = item

# result = next(filter(lambda x: x['id'] == 1, arr))

# result1 = next(filter(lambda x: x['name'] == "Akshay", arr))

# ? Make a Person class that has name and id as properties and walk as a function
# ? make a array of Person with different persons
# ? search one Person with your name in it and make that person walk (simply call the walk function of the found value)


from ast import Delete


class Person():
    def __init__(self, name, id) -> None:
        self.name = name
        self.id = id

    def __str__(self) -> str:
        return f"Hi my name is {self.name} with ID {self.id}"


pArray = [Person("Akshay", 0), Person("Mahesh", 1), Person('Sourav', 2)]
# * list comprehension
# ! simple
arr = []
for i in range(0, 11):
    arr.append(i)


arr1 = [i for i in range(0, 11)]

# ! with conditions

arr3 = []
for i in range(0, 11):
    if i % 2 == 0:
        arr3.append(i)
    else:
        arr3.append(i * 2)

arr4 = [i if i % 2 == 0 else i * 2 for i in range(0, 11)]