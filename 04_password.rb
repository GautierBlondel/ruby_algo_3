password = String.new
number_options = [1, 2, 3]
number = 0


def options(number, password)
  puts "HEY FELLAW CHOOSE A NUMBER BETWEEN ONE & THREE"
  puts "1. INSCRIS TOI"
  puts "2. AUTHENTIFIE TOI"
  puts "3. CE QU'IL FAUT SAVOIR"
  number = gets.chomp.to_i

  case number
    when 1 
      signup(number, password)
    when 2
      login(password, number)
    when 3
      welcome(number, password)
    else 
      puts "je ne t'ai pas demandé de fantaisie mon frère"
  end
end


def signup(number, password)
  puts "choisis un mot de passe"
  password = gets.chomp
  options(number, password)
end

def login(password, number)
  if password.length == 0
    "Tu n'as configuré aucun mot de passe gros génie"
    options(number, password)
  end
    puts "rentre ton mot de passe"
    verification = gets.chomp
      if password != verification
        puts "tu t'es planté de mot magique mon fréro, rééssaye"
        login(password, number)
      else 
        puts "bienvenue tu es connecté"
        secret_screen()
      end
  end

def secret_screen
  puts "Bienvenue sur ton écran secret tu es bloqué de ouf" 
end

def blocking_line(password, verification)
  puts "tu t'es trompé réessaye"
  
end

def welcome(number, password)
  puts "ya plein d'info dans les menus, moi mon plat préféré c'est la terrine campagnarde. Lache moi donc avec tes fruits de mer"
  options(number, password)
end

options(number, password)

