require "byebug"

class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14){[]}
    # debugger
    self.place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    (0..5).each do |i|
      @cups[i] += [:stone, :stone, :stone, :stone]
    end
    @cups
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos < 0 || start_pos > 14
    raise "Starting cup is empty" if @cups[start_pos].empty?
    true
  end

  def make_move(start_pos, current_player_name)
    num_stones = @cups[start_pos].length
    dump = []
    distance = 1
    until @cups[start_pos].empty?
      if(current_player_name.prompt == 1)
        4.times {dump << @cups[(6 + distance) % 14].shift}
      else
        4.times {dump << @cups[(14 + distance) % 14].shift}
      end
      distance += 1
    end

    i = start_pos + 1
    until dump.empty?
      i == i % 14
      @cups[i] << dump.shift
      i += 1
    end
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end