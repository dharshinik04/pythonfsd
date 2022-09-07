def age(a):
    if a <= 0:
        return 0
    else:
        return a*365


x = int(input("Enter age: "))
if(age(x)):
    print("Age in days is: " + str(age(x)) + " days")
else:
    print("Age cannot be less than or equal to zero...")