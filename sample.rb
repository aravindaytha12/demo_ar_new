puts IO.readlines("input.txt").class
# ========================================================================
#                           attr_accessor

# # require 'pry'
# class Sample
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end
  
#   def some_new_method
#     puts "@name value from initialize method == #{@name}"
#   end
# end

# s = Sample.new("CTS")
# s.some_new_method
# puts s.name
# puts s.name="CTS new"
# puts s.name

# #attr_accessor ==> provides two methods for the class, in which it is defined.
# #Here, for this Sample class ==> 2 methods will gets generated from this attr_accessor ==> [:name, :name=]

# #To check any methods for any class
# Sample.instance_methods #All defined+predefined methods will come
# Sample.instance_methods(false) #Only defined methods will come.====> [:name, :name=, :some_new_method]
# ========================================================================





# # class Sample
# #   public
# #   def public_method
# #     puts "I am in public method"
# #   end

# #   def another_public_method
# #     private_method
# #   end

# #   private
# #   def private_method
# #     puts "I am in private method"
# #   end

# #   def self.another_private_method
# #     puts "I am in another private method"
# #   end

# #   protected
# #   def protected_method
# #     puts "I am in protected method"
# #   end

# #   def self.another_protected_method #Sample.another_protected_method
# #     puts "I am in another protected method"
# #   end
# # end

# # class SubSample < Sample
# #   def normal_method_for_private
# #     Sample.another_private_method
# #   end

# #   def normal_method_for_protected
# #     Sample.another_protected_method
# #   end

# # end

# # class OuterClass
# # end

# # s = Sample.new
# # s.public_method
# # s.another_public_method
# # # s.private_method
# # # s.protected_method

# # sub = SubSample.new
# # sub.public_method
# # sub.normal_method_for_private
# # sub.normal_method_for_protected


# # # sub.private_method
# # # sub.protected_method
# # # private method `private_method' called for #<SubSample:0x0000000001728c78> (NoMethodError)
# # # protected method `protected_method' called for #<SubSample:0x0000000001728c78> (NoMethodError)


# # # outer = OuterClass.new
# # # outer.public_method
# # #`public_method': wrong number of arguments (given 0, expected 1) (ArgumentError)