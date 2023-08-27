/*
*	Sum of squares:
 *	1^2 + ... + n^2 = n*(n + 1)*(2n + 1)/6
 *	
 *	Square of sum:
 *	(1 + ... + n) ^ 2 = (n*(n + 1)/2)^2 = n*n*(n + 1)*(n + 1)/4
 *
 *	Difference:
 *	n*(n+1)/2*[n*(n + 1)/2 - (2n + 1)/3] (this might not be nice with big numbers, beware)
 *
*/
import os

fn main() {
	n := os.args[1].int()
	println(n * (n + 1) / 2 * (n * (n + 1) / 2 - (2 * n + 1) / 3))
}
