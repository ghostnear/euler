/*
*	The result is equal to the sum of the multiples of 3 + multiples of 5 - multiples of 15 (as they have been counted twice).
*/
import os

[inline]
fn sum_of_multiples(limit int, value int) int {
	return value * (limit / value) * (limit / value + 1) / 2
}

fn main() {
	limit := os.args[1].int() - 1

	println(sum_of_multiples(limit, 3) + sum_of_multiples(limit, 5) - sum_of_multiples(limit,
		15))
}
