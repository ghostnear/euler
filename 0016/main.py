digitSum = 0

for digit in str(2**1000):
    digitSum += int(digit)

print(digitSum)