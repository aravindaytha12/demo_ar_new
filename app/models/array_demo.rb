# =======================================================================
require "pry"
class Array
  attr_accessor :array

  def initialize(array)
    @array = array
  end

  def each
    i=0
    while i < @array.size
      yield @array[i]
      i +=1
    end
  end

  def abcd
    puts "===============I am in new abcd method==============="
  end

  def double
    i=0
    while i < @array.size
      # yield (@array[i]*2)
      yield (@array[i]*2)
      i +=1
    end
  end

  obj = Array.new([1,2,3,4])
  obj.each{|a| puts a}
  obj.abcd
  obj.double{|i| puts i}
  obj.abcd
  # 5.times{|i| puts i}
end
# =======================================================================