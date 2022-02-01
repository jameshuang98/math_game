class Player

    attr_accessor :score, :name
    attr_reader :initial_score

    def initialize(score, name)
        @score = score
        @initial_score = score
        @name = name
    end

    # def update_score(correct)
    #     if (!correct)
    #         score--
    #     end
    # end
end
