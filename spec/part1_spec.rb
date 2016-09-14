require 'part1.rb'

describe "#palindrome?" do
  it "should be defined" do
 #   lambda { palindrome?("Testing") }.should_not raise_error
    expect(lambda {palindrome?("Testing")}).not_to raise_error
  end

  it 'should return true for empty string' do
    expect(palindrome?('')).to be true
  end

  it 'should return true for single character' do
    expect(palindrome?('a')).to be true
  end

  it 'should ignore non-word characters' do
    expect(palindrome?('abb"a')).to be true
  end
  it 'should fail even with non-word characters' do
    expect(palindrome?('abb"b')).to be false
  end
end

describe "#count_words" do
  it "should be defined" do
#    lambda { count_words("Testing") }.should_not raise_error
    expect(lambda{count_words("Testing")}).not_to raise_error
  end

  it "should return 3 for 'hello there guy'" do
    expect(count_words("hello there guy")).to eql({'hello' => 1, 'there' => 1, 'guy' => 1})
  end

  it "should return 0 for empty hash" do
    expect(count_words('')).to eql({})
  end

  it 'should handle duplicates' do
    expect(count_words('a a b')).to eql({'a' => 2, 'b' => 1})
  end

  it "should return a Hash" do
#    count_words("Testing").class.should == Hash
    expect(count_words("Testing")).to be_a_kind_of(Hash) 
  end
end
