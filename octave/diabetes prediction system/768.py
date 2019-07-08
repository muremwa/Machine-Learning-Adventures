# by what can you split the data to get a whole number

for i in range(60,85):
    p = i/100
    t = p*768

    if ((t-int(t))==0):
        print(p*100)
        print(t)
