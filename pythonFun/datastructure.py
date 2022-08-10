n = 5
i = 0
while(i <= n):
    j = 1
    while(j <= i):
        if j == 1 or j == i:
            print('*', end='')
        else:
            print(end=' ')
        j = j + 1
    print()
    i = i + 1

i = 0
while(i <= n- 1):
    j = n - 1
    while(j >= i):
        if j == n - 1 or j == i or i == n:
            print('*', end=' ')
        else:
            print(end=' ')
        j = j - 1
    k = 0
    while(k < i):
        print(end=' ')
        k = k + 1
    print()
    i = i + 1