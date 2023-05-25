FISH = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
 'fiiiissshhhhhh']
 tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", 
               "left",  "left-up"]
tiles_hash = {"up" => 0, "right-up" => 1, "right" => 2, "right-down" => 3, "down" => 4, "left-down" => 5, 
"left" => 6,  "left-up" => 7 }
public 

 def sluggish_octopus
    longest_fish = ""
    FISH.each do |fish1|
        FISH.each do |fish2|
            if fish1.length > fish2.length && fish1.length > longest_fish.length
                longest_fish = fish1
            end
        end
    end
    longest_fish
end

def dominant_octopus
    return self.merge_sort.last
end

def merge_sort
    return self if self.length < 2
    mid = self.length / 2
    
    left = self[0...mid]
    right = self[mid..-1]
    return merge_length(left.merge_sort,right.merge_sort)
end

def merge_length(left, right)
    holder = []
    until left.empty? || right.empty?
        case left[0].length <=> right[0].length
        when -1
            holder << left.shift
        when 0
            holder << right.shift
        when 1
            holder << right.shift
        end
    end
    holder + left + right
end

def clever_octopus
    fish = self[0]
    (1...self.length).each {|i| fish = self[i] if self[i].length > fish.length}
    fish
end

def slow_dance(dir, moves_arr = [])
    moves_arr.each_with_index {|move, i| return i if move == dir}
    return "move not found"
end

def fast_dance(dir, move_hash = {})
    move_hash[dir]
end


p sluggish_octopus
p FISH.dominant_octopus
p FISH.clever_octopus
p slow_dance("up", tiles_array)
p slow_dance("right-down", tiles_array)
p fast_dance("up", tiles_hash)
p fast_dance("right-down", tiles_hash)