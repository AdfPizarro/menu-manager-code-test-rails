require "spec_helper"

RSpec.describe Menu, :type => :model do

  before :each do
    @Menu = Menu.create(name: "Dummy Menu")
  end

  it "is not valid with no atributes" do
    expect(Menu.new).to_not be_valid
  end

  it "is valid with a valid name" do
    expect(Menu.new(name: "Test Menu")).to be_valid
  end

  it "return error when the name is duplicated" do
    expect(Menu.new(name: "Dummy Menu")).to_not be_valid
  end

  it "return error when the name is an empty space" do
    expect(Menu.new(name: "")).to_not be_valid
  end

end