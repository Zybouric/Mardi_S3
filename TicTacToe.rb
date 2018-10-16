
class Board

	attr_accessor :a1, :a2, :a3, :b1, :b2 , :b3, :c1, :c2, :c3
	def initialize(a1, a2, a3, b1, b2, b3, c1, c2, c3)
		@a1 = a1
		@a2 = a2
		@a3 = a3
		@b1 = b1
		@b2 = b2
		@b3 = b3
		@c1 = c1
		@c2 = c2 
		@c3 = c3
	end

	def boardgame
		p ["   ", "  1 ", " 2  ", " 3 "].join("|")
		puts "----|----|----|----"
		p ["A  ", " #{@a1}  ", "  #{@a2} ", " #{@a3}  "].join("|")		
		puts "----|----|----|----"		
		p ["B  ", " #{@b1}  ", " #{@b2}  ", " #{@b3}  "].join("|")
		puts "----|----|----|----"
		p ["C  ", " #{@c1}  ", " #{@c2}  ", " #{@c3}  "].join("|")
		winner_is
	end

	def combi_w 
		[[@a1,@a2,@a3],
		[@b1,@b2,@b3],
		[@c1,@c2,@c3],
		[@a1,@b1,@c1],
		[@a2,@b2,@c2],
		[@a3,@b3,@c3],
		[@a1,@b2,@c3],
		[@a3,@b2,@c1]]
	end
	
	def winner_is 
		combi_w.each do |value|
			if value[0] == "X" && value[1] == "X" && value[2] == "X"
				puts "Player1 win"
			elsif value[0] == "O" && value[1] == "O" && value[2] == "O"
				puts "player2 win"

			end
	end
	end 

	def rules_player1
	puts "Player 1, select a case inside de grid"
	select_case = gets.chomp.downcase 
		if select_case == "a1"
			@a1 = "X"
		elsif
		select_case == "a2"
			@a2 = "X"
		elsif
			select_case =="a3"
			@a3 = "X"
		elsif select_case == "b1"
			@b1 = "X"
		elsif
			select_case == "b2"
			@b2 = "X"
		elsif
			select_case == "b3"
			@b3 = "X"
		elsif select_case == "c1"
			@c1 = "X"
		elsif
			select_case == "c2"
			@c2 = "X"
		elsif
			select_case == "c3"
			@c3 = "X"
		end 
	end 

	def rules_player2
	puts "Player2, select a case inside de grid"
	select_case = gets.chomp.downcase 

		if select_case == "a1"
			@a1 = "O"
		elsif
		select_case == "a2"
			@a2 = "O"
		elsif
			select_case =="a3"
			@a3 = "O"
		elsif select_case == "b1"
			@b1 = "O"
		elsif
			select_case == "b2"
			@b2 = "O"
		elsif
			select_case == "b3"
			@b3 = "O"
		elsif select_case == "c1"
			@c1 = "O"
		elsif
			select_case == "c2"
			@c2 = "O"
		elsif
			select_case == "c3"
			@c3 = "O"
		end 
	end	
end

class Player
	def players
		puts "Welcome to BouzyTicTacToe"
		puts "player 1 name : "
		@play1 = gets.chomp
	
		puts "player 2 name : "
		@play2 = gets.chomp
	
		puts @play1 + ":X" + " vs " + @play2+ ":O"
		puts " Let's start"
	end 
end 


class Game
	def newplay
#define players
		newplayer = Player.new
		newplayer.players

#define new game
		newgame = Board.new(" "," "," "," "," "," "," "," "," ")
		newgame.boardgame
#loop 5 fois l'ensemble du code et des mais comme on ne doit lancer que 5,5fois le code on mets le break entre le player 1 et 2 
		i = 1
		while i < 6
		i += 1
			newgame.rules_player1
			newgame.boardgame 
			break if i >= 6
			newgame.rules_player2
			newgame.boardgame 
		end 

	end

startgame = Game.new
startgame.newplay
end 

