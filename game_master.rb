class GameMaster
    attr_accessor :player1, :player2

    def initialize(player1, player2)
        @player1 = player1
        @player2 = player2
        @current_player = @player1
    end

    # Loops through asking questions until one of the player's score reaches 0
    def start_game
        puts "Game started"

        while (@player1.score != 0 && @player2.score != 0)
            correct_answer = ask_question
            user_answer = gets.chomp.to_i
            check_answer?(user_answer, correct_answer)
            output_results
            puts "------------"
            switchPlayer
        end

        switchPlayer
        puts "#{@current_player.name} wins with a score of #{@current_player.score}/#{@current_player.initial_score}"    

    end

    # Asks random math question and also returns the correct answer
    def ask_question
        num1 = 1 + rand(20)
        num2 = 1 + rand(20)
        puts "#{@current_player.name}: What is #{num1} + #{num2}"
        correct_answer = num1 + num2
        # answer = gets.chomp.to_i
        return correct_answer
    end
    
    # Checks player's input against the correct answer
    def check_answer?(user_answer, correct_answer)
        if user_answer != correct_answer
            @current_player.score -= 1
        end
    end

    # Prints to the screen the results after each round
    def output_results
        puts "P1: #{@player1.score}/#{@player1.initial_score} vs P2 #{player2.score}/#{player2.initial_score}"
    end

    
    def switchPlayer
        if (@current_player == @player1)
            @current_player = @player2
        else
            @current_player = @player1
        end
    end
    
end