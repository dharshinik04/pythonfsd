f = open('hello.txt', 'w')
n = int(input("enter the lines:"))
for i in range(1, n+1):
    f.write("Hey there!")
    f.write("_")
    f.write('\n')

f.close()
h = "file, handling"
print(h.split(','))