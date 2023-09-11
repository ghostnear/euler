module main

fn sum_div(n int) int {
	mut sum := 1
	for index := 2; index * index <= n; index++ {
		if n % index == 0 {
			sum += index
			if n / index != index {
				sum += n / index
			}
		}
	}
	return sum
}

fn main() {
	mut sum := 0
	for a in 1 .. 10000 {
		b := sum_div(a)

		if b == a {
			continue
		}

		if sum_div(b) != a {
			continue
		}

		sum += a
	}
	println(sum)
}
