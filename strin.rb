class Stri
def met
puts "enter your first name"

a=gets.chomp()
puts "enter your second name"
b=gets.chomp()
c=(a+b)
puts "your fullname is" " #{c}"

end 
def add
  puts "enter your doornumber"
  d=gets.chomp()
  puts "enter your flat number"
  f=gets.chomp()
  puts "enter your location"
  l=gets.chomp()
  z=d +" \n"+ f+" \n " + l 
  puts "your address is ""#{z}"

end
end
o = Stri.new
o.met
o.add

