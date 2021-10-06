puts "PLAY y/n ?"
good_answers = ["y", "Y", "yes", "Yes", "YES"]
answer = gets.chomp
step = 0
turns = 0
median = 0

def launch_dice(step, turns)
  if step == 10
    # puts "Vous êtes à la marche 10 bravo les mans"
    # puts "turns #{turns}"
    return turns
  else
    turns = turns + 1
    dice = rand(6) + 1
    # puts "step #{step}"
  
    case dice 
      when 5, 6
        # puts "tu avances"
        step = step + 1
        launch_dice(step, turns)
        
      when 1
        # puts "tu recules"
        if step != 0
          step = step - 1
        end
        launch_dice(step, turns)
      when 2, 3, 4
        # puts "tu restes sur place"
        launch_dice(step, turns) 
    end
  end
end

case good_answers.include?(answer)
  when true
    100.times do
      launch_dice(step, turns)
      median = median + launch_dice(step, turns)
      puts "median #{median / 100}"
    end
  else
    puts "OKAY BYE"
end



# S’il fait 5 ou 6, il avance d'une marche et le programme le lui dit (ainsi que la marche où il est à présent)
# S’il fait 1, il descend d'une marche et le programme le lui dit (ainsi que la marche où il est à présent)
# S’il fait 2, 3, ou 4 rien ne se passe, et le programme le lui dit (ainsi que la marche où il est resté)
# Quand le joueur atteint la 10ème marche, le programme l'en informe avec un message super enthousiaste, et le jeu se termine.