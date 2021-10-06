puts "GIMME A NUMBER B-TWEEN 1 & 25"
asked_floors = gets.chomp.to_i
floor_stage = "#"


def wtf_pyramid(asked_floors)
  iterator = 1
  reverse_iterator = asked_floors
  if iterator != asked_floors
    while iterator <= asked_floors

    max_brick = (asked_floors * 2) - 1
    current_bricks = (iterator * 2) - 1
    empty_spaces = max_brick - current_bricks
    half_empty = empty_spaces / 2
    space_1 = Array.new(half_empty, " ")
    bricks = Array.new(current_bricks, "#")
    space_2 = Array.new(half_empty, " ")
    half_wall = space_1.concat(bricks)
    pyramid = half_wall.concat(space_2)

    puts "pyramid #{pyramid.join}"
    iterator = iterator + 1
    end
  end

  if reverse_iterator == asked_floors
    reverse_iterator = reverse_iterator - 1
    
    while reverse_iterator != 0

    max_brick = (asked_floors * 2) - 1
    current_bricks = (reverse_iterator * 2) - 1
    empty_spaces = max_brick - current_bricks
    half_empty = empty_spaces / 2
    
    space_3 = Array.new(half_empty, " ")
    bricks_rev = Array.new(current_bricks, "#")
    space_4 = Array.new(half_empty, " ")
    
    reverse_half_wall = space_3.concat(bricks_rev)
    reverse_py = reverse_half_wall.concat(space_4)
    
    puts "reverse #{reverse_py.join}"
    reverse_iterator = reverse_iterator - 1
    end
  end
end

wtf_pyramid(asked_floors)






