require "./sample_module.rb"

class Sample
  include SampleModule
end

obj = Sample.new
obj.area
