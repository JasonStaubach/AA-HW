require 'byebug'

class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    self.take_turn
    until @game_over
      self.take_turn
    end
    self.game_over_message
    self.reset_game
  end

  def take_turn
    # debugger
    self.show_sequence
    self.require_sequence
    @sequence_length += 1

    self.round_success_message unless @game_over
    
  end

  def show_sequence
    self.add_random_color
    p @seq
    sleep(2)
    system("clear")
  end

  def require_sequence
    checker = @seq.dup
    node = ""
    until checker.empty?
      puts "Make a guess"
      node = gets.chomp

      if node == checker[0]
        checker.shift
        puts "Correct!"
      else
        @game_over = true
        return
      end
    end
    return  
  end

  def add_random_color
    color = Random.new
    random = color.rand(4)
    case random
    when 0
      @seq << "green"
    when 1
      @seq << "yellow"
    when 2
      @seq << "red"
    when 3
      @seq << "blue"
    end
    #@seq #uncomment to cheat
  end

  def round_success_message
    puts "Congratulations, you won round #{sequence_length}"
  end

  def game_over_message
    puts "Sorry, you lose at #{@sequence_length} times"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end