fn reverse(arg int) int {
	mut result, mut n := 0, arg
	for n > 0 {
		result = result * 10 + n % 10
		n /= 10
	}
	return result
}

fn is_product(n int) bool {
	for index := 999; index >= 100; index-- {
		if (n / index) * index == n && n / index < 1000 {
			return true
		}
	}
	return false
}

fn main() {
	for index := 999; index >= 100; index-- {
		if is_product(index * 1000 + reverse(index)) {
			println(index * 1000 + reverse(index))
			return
		}
	}
}
