class RpsGame
  attr_accessor :player_move, :computer_play
  PLAYS = [:rock, :paper, :scissors]

  def initialize(player_move)
      @player_move = player_move.to_sym
      @computer_play = PLAYS.sample
  end

  def self.valid_play?(player_move)
    PLAYS.include?(player_move)
  end

  def won?
    self.scissor_win? || self.rock_win? || self.paper_win?
  end

  def lost?
    !self.won? && !self.tied?
  end

  def tied?
    self.player_move == self.computer_play
  end

  ############    HELPER METHODS ###################
  def scissor_win?
    self.player_move == :scissors && self.computer_play == :paper 
  end

  def rock_win?
    self.player_move == :rock && self.computer_play == :scissors
  end

  def paper_win?
    self.player_move == :paper && self.computer_play == :rock
  end
   
end
