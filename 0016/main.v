fn multiply_by_2(mut self []int) {
	// Assumes the format is reversed digits.
	mut transport := 0
	for index := 0; index < self.len; index++ {
		self[index] = self[index] * 2 + transport
		transport = self[index] / 10
		self[index] %= 10
	}
	if transport != 0 {
		self << transport
	}
}

fn main() {
	mut result := [1]
	for index := 0; index < 1000; index++ {
		multiply_by_2(mut result)
	}
	mut sum := 0
	for digit in result {
		sum += digit
	}
	println(sum)
}
