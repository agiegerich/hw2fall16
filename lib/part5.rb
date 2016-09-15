class CartesianProduct
  include Enumerable

  def initialize(a, b)
    @cart_prod = []
    a.each do |a_ele|
      b.each do |b_ele|
        @cart_prod << [a_ele, b_ele]
      end
    end
  end

  def each
    @cart_prod.each {|x| yield x}
  end
end