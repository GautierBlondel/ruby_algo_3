puts "GIMME A NUMBER B-TWEEN 1 & 25"

floors = gets.chomp.to_i
iterator = 1
floor_stage = "#"
pyramid = Array.new

def half_pyramid(iterator, pyramid, floors)
  25.times do 
    pyramid.push("#")
  end
  
  plain_wall = pyramid.join
  
  # puts plain_wall[0, iterator]

  while iterator <= floors
    puts plain_wall[0, iterator]
    iterator = iterator + 1
  end
end

half_pyramid(iterator, pyramid, floors)






