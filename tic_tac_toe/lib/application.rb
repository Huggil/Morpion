
require 'pry'
require_relative 'board'
require_relative 'player'
require_relative 'boardcase'
require_relative 'game'

class Application

  #début du jeu
  def start_game
    system('clear')#permet de revenir à un écran vierge et de relancer une partie de manière propre
    puts "\n\t\t\t---------------------------------------"
    puts "\t\t\t|            LE(S) MORPION(S)             |"
    puts "\t\t\t|         -- Insectes ou jeux?? --           |"
    puts "\t\t\t---------------------------------------"
    puts " "
    puts " "
    puts "      Le jeu du morpion un véritable classique "
    puts "      On va rester dans les règles qui sont "
    puts "      soit le premier à aligner 3 symboles"
    puts "      less go"
    puts " "
  end

  #1er joueur
  def ask_player1
    puts "      Joueur 1 c'est quoi ton alias? "
    print "      Joueur 1: "
    player1 = gets.chomp
    puts "      Ton symbole sera le X"
    puts " "
    return player1
  end

  #2nd joueur 
  def ask_player2
    puts "      Joueur 2, alias svp"
    print "      Joueur 2 : "
    player2 = gets.chomp
    puts "      Ton symbole sera le O"
    puts " "
    puts " "
    puts "      La partie peut commencer..."
    puts "      entre dans l'espace, et lance le jeu"
    gets.chomp
    return player2
  end

  #demande si l'on souhaite relancer une partie
  def ask_again(game)
    puts "      Play again? OUI / NON"
    print "      > "
    input = gets.chomp.upcase
    puts " "
    while input != "OUI" || input != "NON"
      case input
      when "OUI"
        #si oui, on nettoie la grille et relance une partie
        input = " "
        game.new_round
        game.turn
      when "NON"
        #si non, va afficher le tableau de fin
        game.game_end
        break
      else
        #si l'entrée n'est pas bonne, retourne à l'input
        puts "      Play again? OUI / NON"
        print "      > "
        input = gets.chomp.upcase
        puts " "
      end
    end

  end

  #va lancer le morpion
  def perform
    start_game
    player1 = ask_player1
    player2 = ask_player2

    game = Game.new(player1, player2) #créer le premier jeu
    game.turn

    ask_again(game) #une boucle qui effectues plusieurs parties tant que les joueurs ne disent pas stop

  end
  
end