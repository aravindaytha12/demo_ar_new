class Post < ApplicationRecord
  def public_method
    puts "I am public method"    
  end

  private
  def private_method
    puts "I am private method"
  end

  protected
  def protected_method
    puts "I am protected method"
  end
end
