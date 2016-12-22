def main(input)
	input = input.split(", ")
	coor = [0, 0]
	dir = 'N'
	input.each do |instr|
		dir = change_dir(dir, instr[0])
		move(coor, dir, instr[1])

	end
end

def change_dir(current_dir, new_dir)
	if current_dir == 'N'
		if new_dir == 'R'
			current_dir = 'E'
		else
			current_dir = 'W'
		end
	elsif current_dir == 'E'
		if new_dir == 'R'
			current_dir = 'S'
		else
			current_dir = 'N'
		end
	elsif current_dir == 'S'
		if new_dir == 'R'
			current_dir = 'W'
		else
			current_dir = 'E'
		end
	elsif current_dir == 'W'
		if new_dir == 'R'
			current_dir = 'N'
		else
			current_dir = 'S'
		end
	end
	current_dir
end

def move(coor, dir, dist)
	dist = dist.to_i
	if dir == 'N'
		coor[0] += dist
	elsif dir == 'E'
		coor[1] += dist
	elsif dir == 'S'
		coor[0]
	end
end

puts change_dir('E', 'R')
puts change_dir('S', 'L')
