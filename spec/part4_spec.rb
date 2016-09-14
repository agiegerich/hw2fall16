require 'part4.rb'


class Test
  def initialize(a)
    @a = 5
  end

  attr_accessor_with_history :a
end

describe "Class" do
  it "should have an attr_accessor_with_history method" do
#    lambda { Class.new.attr_accessor_with_history :x }.should_not raise_error
    expect(lambda { Class.new.attr_accessor_with_history :x }).not_to raise_error
  end

  it 'should keep a history of values' do
    t = Test.new(3)
    t.a = 4
    t.a = 5
    t.a = 6
    expect(t.a_history).to eql([4,5,6])
  end
end

