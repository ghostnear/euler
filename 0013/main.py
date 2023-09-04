import os

file = os.open("./0017/input.txt", os.O_RDONLY)

lines = os.read(file, 100000).decode().split("\n")

result = 0

for line in lines:
    result += int(line)

print(str(result)[0:10])