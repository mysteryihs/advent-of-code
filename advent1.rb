def main(input)
	input = input.split(", ")
	coor = [0, 0]
	dir = 'N'
	input.each do |instr|
		puts instr[1..-1]
		dir = change_dir(dir, instr[0])
		move(coor, dir, instr[1..-1])
	end
	answer = coor[0].abs + coor[1].abs
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
		coor[0] -= dist
	else
		coor[1] -= dist
	end
	coor
end

puts main("R1, L3, R5, R5, R5, L4, R5, R1, R2, L1, L1, R5, R1, L3, L5, L2, R4, L1, R4, R5, L3, R5, L1, R3, L5, R1, L2, R1, L5, L1, R1, R4, R1, L1, L3, R3, R5, L3, R4, L4, R5, L5, L1, L2, R4, R3, R3, L185, R3, R4, L5, L4, R48, R1, R2, L1, R1, L4, L4, R77, R5, L2, R192, R2, R5, L4, L5, L3, R2, L4, R1, L5, R5, R4, R1, R2, L3, R4, R4, L2, L4, L3, R5, R4, L2, L1, L3, R1, R5, R5, R2, L5, L2, L3, L4, R2, R1, L4, L1, R1, R5, R3, R3, R4, L1, L4, R1, L2, R3, L3, L2, L1, L2, L2, L1, L2, R3, R1, L4, R1, L1, L4, R1, L2, L5, R3, L5, L2, L2, L3, R1, L4, R1, R1, R2, L1, L4, L4, R2, R2, R2, R2, R5, R1, L1, L4, L5, R2, R4, L3, L5, R2, R3, L4, L1, R2, R3, R5, L2, L3, R3, R1, R3")