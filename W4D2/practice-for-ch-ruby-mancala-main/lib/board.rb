require "byebug"

class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14){[]}
    # debugger
    self.place_stones
    @name1 = name1
    @name2 = name2
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    (0..5).each do |i|
      @cups[i] += [:stone, :stone, :stone, :stone]
    end
    (7..12).each do |i|
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
    dump = @cups[start_pos]
    @cups[start_pos] = []

    i = (start_pos + 1) % 14
    # debugger
    until dump.empty?
      if(current_player_name == @name1)
        @cups[i] << dump.shift unless i == 13
      else
        @cups[i] << dump.shift unless i == 6
      end
      i = (i + 1) % 14
    end
    render # board.render
    i = (i - 1) % 14
    next_turn(i)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns

    if(ending_cup_idx == 6 )|| (ending_cup_idx == 13)
      return :prompt
    elsif @cups[ending_cup_idx].empty?
      return :switch
    else
      p "#{@cups[ending_cup_idx]} !!!!!"
      return ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    return true if (0..5).all? {|i| @cups[i].empty?}
    return true if (7..12).all? {|i| @cups[i].empty?}
    false
  end

  def winner
    case @cups[6] <=> @cups[13]
    when 0
      return :draw
    when -1
      return @name2
    when 1
      return @name1
    end
  end
end