module Math
  def sqrt
    a=Math.sqrt(9)
    puts a
  end
  
  def sin
    a=Math.sin(90)
    puts a
  end
end

class Naga
  include Math
end

obj = Naga.new
obj.sqrt