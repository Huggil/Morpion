#ON APPEL LES FICHIERS UTILES COMME BOARDCASE ET PLAYER, CAR ON VA S'EN SERVIR DEDANS
require_relative 'boardcase'
require_relative 'player'
require 'pry'

class Board #Cette classe annonce le déroulement de tout ce qui va se passer à l'intérieur des cases
  attr_accessor :array_case #on va créer un tableau
  
  def initialize
    @array_case = [] #on initialise un tableau pour créer les cases

    #toutes les cases du morpion, ayant des ID différentes vont être ajouté à l'array
    #Explication de ce qu'il ce passe : On prend l'attribut @array_case (qui est un tableau) et on créer les cases grace à la classe BoardCase(qui nous dis ce qu'est la case), en faisant BoardCase.new("la value de la case, c'est a dire le numéro de la case").
    @array_case << BoardCase.new("A1") 
    @array_case << BoardCase.new("A2")
    @array_case << BoardCase.new("A3")
    @array_case << BoardCase.new("B1")
    @array_case << BoardCase.new("B2")
    @array_case << BoardCase.new("B3")
    @array_case << BoardCase.new("C1")
    @array_case << BoardCase.new("C2")
    @array_case << BoardCase.new("C3")
  end

  #L'affichage du tableau en mode graphique
  def board_display #construction pas à pas du graphisme du morpion / les puts sont là pour mettre les traits et créer le canvas du morpion.
    puts "\n=======================================\n"
    puts " "
    puts "            | 1 | 2 | 3 "
    print "         "
    puts "-" * 12
    puts "          A | #{array_case[0].value} | #{array_case[1].value} | #{array_case[2].value} " #Là on va juste mettre en appelant #{arra_case[on mets les cases 1, 2 et 3 en commençant par 0 (c'est comme ça que fonctionne le décompte d'un tableau)].value} le .value fait référence au (value)dans la classe BoardCase qui permettra d'appliquer le trou dans la case (comme ci il n'y avait rien)
    print "         "
    puts "-" * 12
    puts "          B | #{array_case[3].value} | #{array_case[4].value} | #{array_case[5].value} "
    print "         "
    puts "-" * 12
    puts "          C | #{array_case[6].value} | #{array_case[7].value} | #{array_case[8].value} "
    puts " "
    puts "\n=======================================\n"
  end

  #nettoyer le tableau pour une nouvelle partie
  def board_clean
    n = " " #on créer une valeur avec un blanc pour effacer les croix et rond
    #les commandes qui suivent appelle toute les cases et dont on leurs donnent la valeur n qui est donc un blanc
    array_case[0].value = n 
    array_case[1].value = n
    array_case[2].value = n
    array_case[3].value = n
    array_case[4].value = n
    array_case[5].value = n
    array_case[6].value = n
    array_case[7].value = n
    array_case[8].value = n
  end

  #"LA CREATION DU JOUEUR"
  def play_turn(player)

    #Condition qui va nous dire quand le joueur 1  écris sont nom il aura la croix et pas le rond, qui sera donné au joueur 2
    if player == "01"
      a = "X"
    else 
      a = "O"
    end

    #demande le choix du joueur
    puts "      Où vas tu jouer ?"
    print "      > "
    input = gets.chomp.upcase
    loop do #permet de créer une boucle infini mais qu'on stop grâce à BREAK
      case input

      #si l'entrée correspond à un when, effectue la suite

      when "A1" #Quand on choisi A1 alors il se pas ce qu'il y a dans IF
        
        if array_case[0].value != " "  #Si la case n'est pas vide alors tu reçois les message de tricheur etc.... Faire attention de bien mettre le bon numéro entre les crochets qui corespond à A1 (et pour les autres cases en dessous)
          puts " "
          puts "      Tricheur !"
          puts "      La case est déjà prise"
          puts "      Choisi une autre case : "
          print "      > "
          input = gets.chomp.upcase #et là on te relance la demande de choisir une case
        else
          array_case[0].value = a #Et donc si la case et vide alors on applique ce que le "a" nous donne = X ou O
          break #Ici on arrête la boucle du "LOOP DO"
        end
#On va réappliquer la même démarche que dans A1 pour toutes les autres cases !

      when "A2" 
        if array_case[1].value != " "
          puts " "
          puts "      Tricheur !"
          puts "      La case est déjà prise"
          puts "      Choisi une autre case : "
          print "      > "
          input = gets.chomp.upcase
        else
          array_case[1].value = a
          break
        end

      when "A3"
        if array_case[2].value != " "
          puts " "
          puts "      Tricheur !"
          puts "      La case est déjà prise"
          puts "      Choisi une autre case : "
          print "      > "
          input = gets.chomp.upcase
        else
          array_case[2].value = a
          break
        end

      when "B1"
        if array_case[3].value != " "
          puts " "
          puts "      Tricheur !"
          puts "      La case est déjà prise"
          puts "      Choisi une autre case : "
          print "      > "
          input = gets.chomp.upcase
        else
          array_case[3].value = a
          break
        end

      when "B2"
        if array_case[4].value != " "
          puts " "
          puts "      Tricheur !"
          puts "      La case est déjà prise"
          puts "      Choisi une autre case : "
          print "      > "
          input = gets.chomp.upcase
        else
          array_case[4].value = a
          break
        end

      when "B3"
        if array_case[5].value != " "
          puts " "
          puts "      Tricheur !"
          puts "      La case est déjà prise"
          puts "      Choisi une autre case : "
          print "      > "
          input = gets.chomp.upcase
        else
          array_case[5].value = a
          break
        end

      when "C1"
        if array_case[6].value != " "
          puts " "
          puts "      Tricheur !"
          puts "      La case est déjà prise"
          puts "      Choisi une autre case : "
          print "      > "
          input = gets.chomp.upcase
        else
          array_case[6].value = a
          break
        end

      when "C2"
        if array_case[7].value != " "
          puts " "
          puts "      Tricheur !"
          puts "      La case est déjà prise"
          puts "      Choisi une autre case : "
          print "      > "
          input = gets.chomp
        else
          array_case[7].value = a
          break
        end

      when "C3"
        if array_case[8].value != " "
          puts " "
          puts "      Tricheur !"
          puts "      La case est déjà prise"
          puts "      Choisi une autre case : "
          print "      > "
          input = gets.chomp.upcase
        else
          array_case[8].value = a
          break
        end

      else
        #si l'entrée ne correspond pas a une case attendue, renvois à input
        puts " "
        puts "      Tu n'as pas entré une case valide"
        puts "      Essaie encore en mettant bien les majuscules : "
        print "      > "
        input = gets.chomp.upcase
      end
    end
  end

  def victory #cette methode donne toutes les possibilitées qui gagne la partie pour les deux joueur ET le cas où il pourrait y avoir égalité

    #toutes les possibilités de victoires du joueur 1  (symbole X)
    if array_case[0].value == array_case[1].value && array_case[1].value == array_case[2].value && array_case[2].value == "X"
      return "X"
    elsif array_case[3].value == array_case[4].value && array_case[4].value == array_case[5].value && array_case[5].value == "X"
      return "X"
    elsif array_case[6].value == array_case[7].value && array_case[7].value == array_case[8].value && array_case[8].value == "X"
      return "X"
    elsif array_case[0].value == array_case[3].value && array_case[3].value == array_case[6].value && array_case[6].value == "X"
      return "X"
    elsif array_case[1].value == array_case[4].value && array_case[4].value == array_case[7].value && array_case[7].value == "X"
      return "X"
    elsif array_case[2].value == array_case[5].value && array_case[5].value == array_case[8].value && array_case[8].value == "X"
      return "X"
    elsif array_case[0].value == array_case[4].value && array_case[4].value == array_case[8].value && array_case[8].value == "X"
      return "X"
    elsif array_case[2].value == array_case[4].value && array_case[4].value == array_case[6].value && array_case[6].value == "X"
      return "X"

    #toutes les possibilités de victoires du joueur 2 (symbole O)
    elsif array_case[0].value == array_case[1].value && array_case[1].value == array_case[2].value && array_case[2].value == "O"
      return "O"
    elsif array_case[3].value == array_case[4].value && array_case[4].value == array_case[5].value && array_case[5].value == "O"
      return "O"
    elsif array_case[6].value == array_case[7].value && array_case[7].value == array_case[8].value && array_case[8].value == "O"
      return "O"
    elsif array_case[0].value == array_case[3].value && array_case[3].value == array_case[6].value && array_case[6].value == "O"
      return "O"
    elsif array_case[1].value == array_case[4].value && array_case[4].value == array_case[7].value && array_case[7].value == "O"
      return "O"
    elsif array_case[2].value == array_case[5].value && array_case[5].value == array_case[8].value && array_case[8].value == "O"
      return "O"
    elsif array_case[0].value == array_case[4].value && array_case[4].value == array_case[8].value && array_case[8].value == "O"
      return "O"
    elsif array_case[2].value == array_case[4].value && array_case[4].value == array_case[6].value && array_case[6].value == "O"
      return "O"

    #si toutes les cases sont remplies, retourne une égalité
    elsif array_case[0].value != " " && array_case[1].value != " " && array_case[2].value != " " && array_case[3].value != " " && array_case[4].value != " " && array_case[5].value != " " && array_case[6].value != " " &&array_case[7].value != " " && array_case[8].value != " "
      return "égalité"

    else 
      return false
    end
    
  end

end