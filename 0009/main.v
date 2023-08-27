fn main() {
	for a := 1; a <= 1000; a++ {
		for b := a + 1; b <= 1000 - a; b++ {
			mut c := 1000 - a - b

			if c * c == a * a + b * b {
				println(a * b * int(c))
				return
			}
		}  
	}
}