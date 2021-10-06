puts "GIMME A NUMBER B-TWEEN 1 & 25"
asked_floors = gets.chomp.to_i
floor_stage = "#"


def full_pyramid (asked_floors)
    iterator = 1

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

full_pyramid(asked_floors)




