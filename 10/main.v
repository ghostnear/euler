import os

fn main() {
	mut limit := os.args[1].int()
	mut primes := [2]
	mut sum := u64(2)

	for index := 3; index <= limit; index += 2 {
		mut is_prime := true
		for prime in primes {
			if index % prime == 0 {
				is_prime = false
				break
			}
		}
		if is_prime {
			primes << index
			sum += u64(index)
		}
	}

	println(sum)
}
