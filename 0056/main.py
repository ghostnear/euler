def fast_pow(a: int, b: int) -> int:
    if b == 1:
        return a
    
    middle = fast_pow(a, int(b / 2))

    if b % 2 == 0:
        return middle * middle
    
    return middle * middle * a

maximum = 0

for a in range(1, 100):
    for b in range(1, 100):
        result = 0
        for digit in str(fast_pow(a, b)):
            result += int(digit)
        if result > maximum:
            maximum = result


print(maximum)