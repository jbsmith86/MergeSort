require "minitest/autorun"
require "dayoftheweek"

describe "Day of the week" do
  it "does some stuff" do
    instance = DayOfTheWeek.new
    instance.evaluate(1, 24, 2014).must_equal 'Fr'
  end
end
