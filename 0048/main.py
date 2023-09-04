import os
import math

def fast_pow(a: int, b:int) -> int:
    if b == 1:
        return a
    
    middle = fast_pow(a, int(b / 2))

    if b % 2 == 0:
        return middle * middle
    
    return middle * middle * a

result = 0

for number in range(1, 1001):
    result += fast_pow(number, number)

print(str(result)[-10:])