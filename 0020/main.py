digitSum = 0

def factorial(n):
    if n != 1:
        return n * factorial(n-1)
    return 1

for digit in str(factorial(100)):
    digitSum += int(digit)

print(digitSum)