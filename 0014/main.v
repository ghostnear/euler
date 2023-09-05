module main

fn count_numbers(cn u64) int {
	mut count := 1
	mut n := cn

	for n != 1 {
		if n % 2 == 0 {
			n /= 2
		} else {
			n = 3 * n + 1
		}
		count++
	}

	return count
}

fn main() {
	mut maximum := 0
	mut number := 0

	for index := 1; index < 1000000; index++ {
		result := count_numbers(u64(index))
		if result > maximum {
			maximum = result
			number = index
		}
	}

	println('${number}')
}
