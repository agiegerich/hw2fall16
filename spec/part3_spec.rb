require 'part3.rb'

describe "dessert" do
  it "should define a constructor" do
#    lambda { Dessert.new('a', 1) }.should_not raise_error
    expect(lambda {Dessert.new('a', 1)}).not_to raise_error
  end
 [:healthy?, :delicious?].each do |method|
    it "should define #{method}" do
#      Dessert.new('a',1).should respond_to method
      expect(Dessert.new('a',1)).to respond_to(method)
    end
 end
  [Dessert.new('a', 1), Dessert.new('b', 10000), Dessert.new('c', 201)].each do |dessert|
    it 'should always be delicious' do
      expect(dessert.delicious?).to be true
    end
  end
  it 'should return the right name' do
    name = 'abc'
    dessert = Dessert.new(name, 100)
    expect(dessert.name).to eql name
  end

  it 'should return the right cals' do
    cals = 100
    d = Dessert.new('abc', cals)
    expect(d.calories).to eql cals
    d.calories= 50
    expect(d.calories).to eql 50
  end

  it 'should be healthy if less than 200 calores' do
    expect(Dessert.new('abc', 199).healthy?).to be true
  end

  it 'should not be healthy if 200 calories or more' do
    expect(Dessert.new('abc', 200).healthy?).to be false
  end
end

describe "jellybean" do
  it "should define a constructor" do
#    lambda { JellyBean.new('a', 1, 2) }.should_not raise_error
    expect(lambda { JellyBean.new('a', 1, 2) }).not_to raise_error
  end
    [:healthy?, :delicious?].each do |method|
      it "should define #{method}" do
#       JellyBean.new('a',1, 2).should respond_to method
        expect(JellyBean.new('a',1, 2)).to respond_to(method)
      end
    end
  it 'should not be delicious if it is black licorice' do
    expect(JellyBean.new('bean', 100, 'black licorice').delicious?).to be false
  end

  it 'should be delicious if it is not black licorice flavor' do
    expect(JellyBean.new('bean', 100, 'blacklicorice').delicious?).to be true
  end
end
