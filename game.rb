require "./question.rb"
require "./player.rb"

class Game 

  def initialize
    @player1 = Player.new("player 1")
    @player2 = Player.new("player 2")
    @current_player = @player1
  end


  def game_start 
    puts "All players are a go"
    puts "initializing..."
    puts ".....Ready!"
    game_body
  end

  def game_body
    while @player1.lives > 0 && @player2.lives > 0

      puts "---- NEW TURN ----"
      question = Question.new

      puts "#{@current_player.name}: #{question.question}"

      userinput = gets.chomp.to_i
      if userinput != question.answer
        @current_player.lives -= 1
        puts "#{@current_player.name} bruh, wtf!"
      else
        puts "#{@current_player.name} you got it bro!"
      end
      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
      @current_player = @current_player == @player1 ? @player2 : @player1
    end
    puts "The game is over! The winner is #{@current_player.name}, with a score of #{@current_player.lives}."
  end
end


# who's concern is what?
# @current_player switches and primes on every render of game_start