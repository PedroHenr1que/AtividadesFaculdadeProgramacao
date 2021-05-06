import math

pointOne = ()
pointTwo = ()

value = float(input('Type the value of X at point one: '))
pointOne += ((value, ))
value = float(input('Type the value of Y at point one: '))
pointOne += ((value, ))

value = float(input('\n\nType the value of X at point two: '))
pointTwo += ((value, ))
value = float(input('Type the value of Y at point two: '))
pointTwo += ((value, ))


print(pointOne)
print(pointTwo)
    

distanci = math.sqrt((pointTwo[0] - pointOne[0])**2 + (pointTwo[1] - pointOne[1])**2)

print(f'\n\nThe distance between X and Y is {distanci}')