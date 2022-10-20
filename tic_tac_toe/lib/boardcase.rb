require 'pry'
class BoardCase
  attr_accessor :value, :id
    
  def initialize(id)
    #le nom de la case de A1 à C3
    @id = id

    #ce que la case va afficher à la suite de input
    @value = " "
  end
    
end
  