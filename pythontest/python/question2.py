value1 = 2147483647
value2 = -2147483648
 
def reversDigits(num):
     
    r = 0
     
    while(num > 0):   
        rem = num % 10
        num = (num//10)
         
        if(r > value1/10 or r == value1/10 and rem > 7):
            return 0
         
        if(r < value2/10 or r == value2/10 and rem < -8):
            return 0
         
        r = r*10 + rem
     
    return r
 
num = 10004
print(f"reverse {reversDigits(num)}")
 
num = 1000000045
print(f"reverse {reversDigits(num)}")