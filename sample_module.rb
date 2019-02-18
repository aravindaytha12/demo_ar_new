module SampleModule
  def area
    puts "enter the side of a square"
    a=gets.to_i
    ar=a*a
    puts ar
  end

  def perimeter
    puts "enter the side of the square"
    a=gets.to_i
    p=4*a
    puts p
  end
end