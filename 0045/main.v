module main

import arrays

[inline]
fn triangle(n u64) u64 {
	return n * (n + 1) / 2
}

[inline]
fn pentagon(n u64) u64 {
	return n * (3 * n - 1) / 2
}

[inline]
fn hexagon(n u64) u64 {
	return n * (2 * n - 1)
}

fn main() {
	// Skipping the first number
	mut indext := u64(286)
	mut indexp := u64(166)
	mut indexh := u64(144)

	for {
		result_array := [triangle(indext), pentagon(indexp), hexagon(indexh)]

		if arrays.map_of_counts(result_array).values()[0] == 3 {
			println(result_array[0])
			break
		}

		minimum := arrays.idx_min(result_array) or { 0 }

		match minimum {
			0 {
				indext++
			}
			1 {
				indexp++
			}
			2 {
				indexh++
			}
			else {}
		}
	}
}
