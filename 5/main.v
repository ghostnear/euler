import os

fn largest_divider(a int, b int) int {
	if b == 0 {
		return a
	}
	return largest_divider(b, a % b)
}

fn smallest_multiple(a int, b int) int {
	// Beware that by not dividing first, you may cross the 32 bit limit.
	return a * (b / largest_divider(a, b))
}

fn main() {
	mut result := 1

	for index := 2; index <= os.args[1].int(); index++ {
		result = smallest_multiple(result, index)
	}

	println(result)
}
