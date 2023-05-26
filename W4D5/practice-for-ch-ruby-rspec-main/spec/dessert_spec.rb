require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:cookie) {Dessert.new("Chocolate",20,"John Goodman")}
  let(:chef) { double("chef") }

  describe "#initialize" do
    it "sets a type"
      expect(cookie.type).to eq("Chocolate")
    end 
    # it "sets a quantity"
    #   expect(cookie.quantity).to eq(20)
    # end
    # it "starts ingredients as an empty array"
    #   expect(cookie.ingredients).to eq([])
    # end
    # it "raises an argument error when given a non-integer quantity"
    #   expect { Dessert.new("Chocolate","string","chef")}.to raise_error(ArgumentError)
    # end
   end

#   describe "#add_ingredient" do
#     it "adds an ingredient to the ingredients array"
#       expect(cookie.add_ingredient("sugar")).to eq(["sugar"])
#     end
#   end

#   describe "#mix!" do
#     it "shuffles the ingredient array"
#       expect(cookie.mix!.length).to eq(1)
#   end

#   describe "#eat" do
#     it "subtracts an amount from the quantity"
#       expect(cookie.eat(5)).to eq(15)
#     end

#     it "raises an error if the amount is greater than the quantity"
#       expect(cookie.eat(30)).to raise_error("Can't eat that many!")
#     end
#   end

#   describe "#serve" do
#     it "contains the titleized version of the chef's name"
#       expect(cookie).to receive(:titleize)
#     end
#   end

#   describe "#make_more" do
#     it "calls bake on the dessert's chef with the dessert passed in"
#       expect(cookie).to receive(:bake)
#     end
#   end
# end