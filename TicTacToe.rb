
class Boardgeneral
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
		#board = Array.new(3) { Array.new(3) {'0'}},0
		#puts board
		p ["   ", "  1 ", " 2  ", " 3 "].join("|")
		puts "----|----|----|----"
		p ["A  ", " #{@a1}  ", " #{@a2}  ", " #{@a3} "].join("|")		
		puts "----|----|----|----"		
		p ["B  ", " #{@b1}  ", " #{@b2}  ", " #{@b3} "].join("|")
		puts "----|----|----|----"
		p ["C  ", " #{@c1}  ", " #{@c2}  ", " #{@c3} "].join("|")
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


class Playergame 
	def players
		puts "Welcome to BouzyTicTacToe"
		puts "player 1 name : "
		@play1 = gets.chomp
	
		puts "player 2 name : "
		@play2 = gets.chomp
	
		puts @play1 + ":X" + " vs " + @play2+ ":O"

	end 

	#def firstplayer
		#first = [@play1,@play2] 
		#firstgo = first.sample
		#puts firstgo + " plays first"
		puts " Let's start"
	#end
end 

def newplay
		newgame = Boardgeneral.new(" "," "," "," "," "," "," "," "," ")
		newgame.boardgame
		newplayer = Playergame.new
		newplayer.players
		#newplayer.firstplayer


		newgame.rules_player1
		newgame.boardgame
		newgame.rules_player2
		newgame.boardgame
		
end 

newplay

