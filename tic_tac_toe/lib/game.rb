#ON REQUIRE BOARD / BOARDCASE / ET PLAYER CAR ON EN A BESOIN POUR FAIRE FONCTIONNER LES INDICATIONS DANS GAME.RB
require 'pry'
require_relative 'board'
require_relative 'player'
require_relative 'boardcase'

class Game < Board #Dans notre nouvelle Classe Game on veut avoir un héritage de la classe board
  attr_accessor :players, :board, :current_player
  
  def initialize(player1, player2) #On va initialiser la créations des 2 joueurs
    @board = Board.new #on créer un hash à priori ??

    @players = [] #on créer un tableau pour rentrer les joueurs 

    #va créer nos deux joueurs et les mettre dans un array
    @current_player = Player.new(player1, "O", 0) #Ce reporter au fichier player pour comprendre les 3 valeurs entre parenthèses (Player, symbole et win = 0)
    @players << @current_player #On ajoute les joueurs ds le tableau
    @current_player = Player.new(player2, "X", 0)
    @players << @current_player

  end

  def score 
    #affiche les scores à la fin de chaque parties
    puts " "
    puts " "
    print "      "
    puts "-" * 32
    puts "                  -- TABLEAU DES SCORES --          "
    puts "            #{players[0].name} a eu #{players[0].win} victoires !                  " #On vient d'écrire une ligne qui va appeler la valeur players du players = [] et donc on écris #{players[0 qui est égale au placement du joueur1 dans le tableau]et le .name qui fait référence au .name du fichier player} LA DEUXIEME PARTIE montre combien de victoire le joueur à eu avec le .win
    puts "            #{players[1].name} a eu #{players[1].win} victoires !                  "#Exactement la même explication mais pour le joueur 2
    print "      "
    puts "-" * 32
    puts " "

  end

  #lance une partie complète (d'après les méthodes du ficher board.rb)
  def turn

    loop do #Boucle infini lancé pour le jeu

    system('clear') #nettoyer l'affichage

      board.board_display #on vient prendre la méthode créée dans le fichier board pour initialiser la première partie à vide

      #tour du joueur 1
      puts "      C'est au tour de : #{players[0].name}" #on appel le joueur 1 pour jouer
      board.play_turn("01") #On va appeler la méthode pour le tour du joueur 1 dans le fichier board.rb d'où la valeur "01" pour premier joueur comme indiquer dans la def play_turn(player)
      board.board_display #une fois le tour joué on affiche ce qu'il cse passe grâce à la méthode board_display qui prend en compte tout ce qu'il se passe dans chaque cases !

      #sors de la boucle en cas de victoire du joueur 1
      if board.victory == "X" #Voilà à quoi correcpond le "return "X"" De la méthode victory, qui siginifie qu'il y à une ligne de faite
        puts "      Bravo #{players[0].name} ! "
        puts "      C'est une victoire !"
        players[0].win += 1 #On ajoute + 1 au compteur win en appelant la méthode .win
        break #On casse la boucle du LOOP DO car y'a une victoire
      end

      #sors de la boucle en cas d'égalité
      if board.victory == "égalité"
        puts "      Pas de gagnants ! C'est une égalité !"
        puts "      Relancez une partie pour vous départager !"
        break
      end

      #tour du joueur 2
      puts "      C'est au tour de : #{players[1].name}" #même explication que pour le joueur 2
      board.play_turn("02")
      board.board_display

      #sors de la boucle en cas de victoire du joueur 2
      if board.victory == "O"
        puts "      Bravo #{players[1].name} ! "
        puts "      C'est une victoire !"
        players[0].win +=1
        break
      end

    end

    score #affiche les scores

  end

  def new_round
    board.board_clean #nettoie le tableau en vue d'une nouvelle partie
  end

  def game_end
    #affiche la fin de toutes les parties avec le tableau des scores final

    system('clear') #nettoyer l'affichage
    puts " "
    puts " "
    puts " "
    puts " "
    puts "      fin du jeu"
    puts "      toi aussi tu es perdu"
    puts " "
    puts "      Voici un petit rappel des scores finaux !"
    score
    puts " "
    puts " "
    puts " "
  end    
  
end