require './aspectapply_Demo.rb'
class ApplicationController < ActionController::Base
  before_action :controller_instance_method
  def controller_instance_method
    p "....application controller, instance method...."
  end
end
