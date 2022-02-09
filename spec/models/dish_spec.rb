require_relative '../rails_helper.rb'

RSpec.describe Dish, :type => :model do


    before :all do
        @Menu = Menu.create(name: "Dummy Menu")
        @Dish = Dish.create(name: "Dummy dish", price: 1, menu_id: 1)
    end

    it "is not valid with no atributes" do
      expect(Dish.new).to_not be_valid
    end
  
    it "is valid with all the atributes" do
        expect(Dish.new(name: "Test Dish", price: 1, menu_id: 1)).to be_valid
    end
      
    it "return error when the sum of prices is 77 one dish" do
        expect(Dish.new(name: "Test Dish", price: 76, menu_id: 1)).to_not be_valid
    end

    it "return error when the name is duplicated" do
        expect(Dish.new(name: "Dummy dish", price: 1, menu_id: 1)).to_not be_valid
    end

    it "return error when the menu doesn't exist" do
        expect(Dish.new(name: "Test Dish", price: 1, menu_id: 100)).to_not be_valid
    end

    it "return error when the price is not a number" do
        expect(Dish.new(name: "Test Dish", price: "a", menu_id: 1)).to_not be_valid
    end

    it "return error when there is no name" do
        expect(Dish.new(price: "a", menu_id: 1)).to_not be_valid
    end

    it "return error when name is an empty space" do
        expect(Dish.new(name: "",price: 1, menu_id: 1)).to_not be_valid
    end

    it "return error when name starts with E" do
        expect(Dish.new(name: "Elephant",price: 1, menu_id: 1)).to_not be_valid
    end

    it "return error when name starts with e" do
        expect(Dish.new(name: "elephant",price: 1, menu_id: 1)).to_not be_valid
    end





  
end