import os

fn main() {
	mut primes := [2]
	limit := os.args[1].int()
	for index := 3; primes.len < limit; index += 2 {
		mut found := true
		for prime in primes {
			if index % prime == 0 {
				found = false
			}
		}
		if found {
			primes << index
		}
	}
	println(primes[primes.len - 1])
}