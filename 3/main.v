import os

fn main() {
	mut n := os.args[1].int()

	for n % 2 == 0 {
		n /= 2
	}

	if n == 1 {
		println(2)
		return
	}

	for index := 3; index * index <= n; index += 2 {
		for n % index == 0 {
			n /= index
		}

		if n == 1 {
			println(index)
		}
	}

	println(n)
}
