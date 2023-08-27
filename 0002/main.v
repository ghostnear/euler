/*
*	Skip by Begoner on the forums, thanks fellow Romanian.
 *	x, y, **x + y**, x + 2y, 2x + 3y, **3x + 5y**
*/
import os

fn main() {
	mut x, mut y := 1, 1
	mut sum, limit := 0, os.args[1].int()

	for x + y <= limit {
		sum += x + y
		x, y = x + 2 * y, 2 * x + 3 * y
	}

	println(sum)
}
