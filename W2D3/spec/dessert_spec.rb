require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:dessert) { Dessert.new('brownie', 100, 'joshua prpich') }
  let(:chef) { double("chef") }

  describe "#initialize" do
    it "sets a type" do 
      expect(dessert.type).to eq('brownie')
    end

    it "sets a quantity" do 
      expect(dessert.quantity).to eq(100)
    end

    it "starts ingredients as an empty array" do 
      expect(dessert.ingredients).to be_empty 
    end

    it "raises an argument error when given a non-integer quantity" do 
      expect { Dessert.new("brownie", "lalala",'joshua prpich') }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do 
      expect(dessert.ingredients).to_not include('flower')
      dessert.add_ingredient('flower')
      expect(dessert.ingredients).to include('flower')
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array"
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do 
      dessert.eat(50)
      expect(dessert.quantity).to eq(50)
    end

    it "raises an error if the amount is greater than the quantity" do 
      expect { dessert.eat(300)}.to raise_error('not enough left!')
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
