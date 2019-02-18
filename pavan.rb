require "./sample_p.rb"

class Pavan
  def method
    puts "this is the first method"
  end

  def method1
    puts"this is second methods"
  end
end

o = Pavan.new
o.method

obj = Sample.new
obj.meth1(3,4)