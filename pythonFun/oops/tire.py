class Car:
    cartire_count=0
    def __init__(self, model, color,speed) -> None:
        self.Car_type = model
        self.Car_color = color
        self.Car_speed = speed
        self.tikire= 4
        self.engine=[]
        car.cartire_count+=1
    def tire(self,factor):
        self.raiseengine=factor
    def addengine(self,obj):
        self.engine.append(obj)

    def __str__(self) -> str:
        return f"{self.Car_type}- {self.Car_color}-{self.Car_speed}"
obj=Car("swift","Blue","210")
array=[]
for i in range(1):
    array.append(Car(input("model:"), input("color:"), input("speed")))
for Car1 in array:
    print(Car1)