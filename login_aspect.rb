require './action_controller_base.rb'
require './test1.rb'
# Example class to which we will apply our aspects
class ClassA < ActionControllerBase
  def testA
    instance1 = ClassB.new
    instance1.testB
  end  
end

class ClassB  < ActionControllerBase
  def testB 
    instance2 = ClassC.new
    instance2.test
  end
end

instance = ClassA.new
instance.testA
