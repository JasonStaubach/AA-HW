require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "John Goodman") }
  let(:cookie) {Dessert.new("Chocolate",20,"John Goodman")}

  describe "#initialize" do
    it "sets a type" do
      expect(cookie.type).to eq("Chocolate")
    end 
    it "sets a quantity" do
      expect(cookie.quantity).to eq(20)
    end
    it "starts ingredients as an empty array" do
      expect(cookie.ingredients).to eq([])
    end
    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("Chocolate","string","chef")}.to raise_error(ArgumentError)
    end
   end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(cookie.add_ingredient("sugar")).to eq(["sugar"])
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      ingredients = ["sugar","flour","chocolate"]
      ingredients.each do |ing|
        cookie.add_ingredient(ing)
      end
      cookie.mix!
      expect(cookie.ingredients.length).to eq(3)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      cookie.eat(5)
      expect(cookie.quantity).to eq(15)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect{cookie.eat(30)}.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect(cookie.serve).to eq("Chef John Goodman the Great Baker")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(cookie)
    end
  end
 end