validate = False
def validate_rgb(value):
    x = int(value)
    if x <= 255 and x >=0:
        return True
#def validate_rgb(value):

def rgb2hex(value1, value2, value3):

    if int(value1) == 0 and int(value2) == 0 and int(value3) == 0:
        return '#000000'
    else:
        return f'#{int(value1):X}{int(value2):X}{int(value3):X}'
#def rgb2hex(r, g, b):

while validate != True:
    rgb_str = input()
    r, g, b = rgb_str.split(' ')
    validate = validate_rgb(r) and validate_rgb(g) and validate_rgb(b)

hex = rgb2hex(r, g, b)

print('A cor {} em hex � {}'.format((r,g,b), (hex)))
