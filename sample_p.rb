class Sample
  def meth1(a,b)
    a1=a
    b1=b
    c=a1+b1
    puts c
  end 

  def meth2(a,b)
    a1=a
    b1=b
    c=a-b
    puts c
  end
end
o = Sample.new
o.meth1(3,4)