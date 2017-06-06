class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; 
    def initialize(msg="Strategy must be one of R,P,S")
      super
    end
  end

  def self.winner(player1, player2)
    case player1[1]
      when "R" then @rock = player1
      when "S" then @scisors = player1
      when "P" then @paper = player1
      else raise NoSuchStrategyError
    end
    
    case player2[1]
      when "R" then @rock ||= player2
      when "S" then @scisors ||= player2
      when "P" then @paper ||= player2
      else raise NoSuchStrategyError
    end
    
    if @rock != nil && @scisors != nil
      winner = @rock
    elsif @scisors != nil && @paper != nil
      winner = @scisors
    elif @paper != nill && @rock != nil
      winner = @paper
    else
      winner = player1
    end
    return winner
  end

  def self.tournament_winner(tournament)
    winners = []
    roundWinner = []
    tornament.each do |round|
      winners << winner(round[0], round[1])
    end
    until winners.length == 1
      roundWinner = winner( winners[0], winners[1] )
      winners.delete roundWinner == winners[0] ? winners[1] : winners[0]
    end
  end

end