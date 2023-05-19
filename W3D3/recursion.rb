def sum_to(n)
    return nil if n < 1
    return 1 if n == 1 
    n + sum_to(n-1)
end

# puts sum_to(5)  # => returns 15
# puts sum_to(1)  # => returns 1
# puts sum_to(9)  # => returns 45
# puts sum_to(-8)  # => returns nil

def add_numbers(nums_arr)
    return nums_arr[0] if nums_arr.length < 2
    nums_arr[0] + add_numbers(nums_arr[1..-1])
end

# puts add_numbers([1,2,3,4]) # => returns 10
# puts add_numbers([3]) # => returns 3
# puts add_numbers([-80,34,7]) # => returns -39
# puts add_numbers([]) # => returns nil

def gamma_fnc(n)
    return nil if n < 1
    return 1 if n == 1
    (n-1) * gamma_fnc(n-1)
end
    
# p gamma_fnc(0)  # => returns nil
# p gamma_fnc(1)  # => returns 1
# p gamma_fnc(4)  # => returns 6
# p gamma_fnc(8)  # => returns 5040

def ice_cream_shop(flavers, favorite)
    return false if flavers[0] == nil
    return true if flavers[0] == favorite
    ice_cream_shop(flavers[1..-1], favorite)
end

# p ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
# p ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
# p ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
# p ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
# p ice_cream_shop([], 'honey lavender')  # => returns false

def reverse(str)
    return str if str.length < 2
    str[-1] + reverse(str[0..-2])
end

  # Test Cases
  p reverse("house") # => "esuoh"
  p reverse("dog") # => "god"
  p reverse("atom") # => "mota"
  p reverse("q") # => "q"
  p reverse("id") # => "di"
  p reverse("") # => ""