# require "./article.rb"
# some_method_article

class Student < ApplicationRecord
  # def Student.some_method
  #   Article.new.public_method
  # end

  def Student.model_class_method
    p ".... student model, class method ...."
  end
  
  def model_instance_method
    p ".... student model, instance method ...."
  end
end
