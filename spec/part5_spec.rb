require 'part5.rb'

describe "CartesianProduct" do
  it "should exist" do
#    lambda { CartesianProduct.new(1..2,3..4) }.should_not raise_error
    expect(lambda { CartesianProduct.new(1..2,3..4) }).not_to raise_error
  end

  it 'should make the cartesian product' do
    cp = CartesianProduct.new(1..2, 3..4)
    arr = []
    cp.each {|x| arr << x}
    answer = [[1,3], [1,4], [2,3], [2,4]]
    arr.each do |x|
      expect(arr).to include x
    end
    answer.each do |x|
      expect(arr).to include x
    end
  end
end

