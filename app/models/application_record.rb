require './aspectapply_Demo.rb'
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
