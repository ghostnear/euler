module main

fn main() {
	mut grid := [21][21]u64{init: 0}
	for index_x in 1 .. 21 {
		for index_y in 1 .. 21 {
			grid[index_x][index_y] += 1 + grid[index_x - 1][index_y] + grid[index_x][index_y - 1]
		}
	}
	println('${grid[20][20] + 1}')
}
