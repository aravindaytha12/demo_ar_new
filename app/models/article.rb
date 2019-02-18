class Article < ApplicationRecord
  def some_method_article
    p "inside method, inside article class file"
  end

  def public_method
    puts "in public method in article class"
  end

  private
  def private_method
    puts "in private method"
  end


  protected
  def protected_method
    
  end


  def Article.test
    arr1 = [] #rails console object methods
    arr2 = [] #irb object methods, means only ruby methods
    arr1 = [:to_json, :as_json, :pry, :to_yaml, :acts_like?, :deep_dup, :duplicable?, :in?, :with_options, :presence_in, :__binding__, :pry_remote, :`, :remote_pry, :present?, :presence, :html_safe?, :to_param, :to_query, :instance_values, :instance_variable_names, :blank?, :pretty_print, :pretty_print_cycle, :pretty_print_inspect, :pretty_print_instance_variables, :try!, :try, :unloadable, :require_or_load, :require_dependency, :load_dependency, :instance_variable_set, :instance_variable_defined?, :remove_instance_variable, :instance_of?, :kind_of?, :is_a?, :tap, :instance_variable_get, :instance_variables, :method, :public_method, :singleton_method, :define_singleton_method, :public_send, :class_eval, :pretty_inspect, :extend, :to_enum, :enum_for, :gem, :suppress_warnings, :<=>, :===, :=~, :!~, :eql?, :respond_to?, :freeze, :inspect, :object_id, :send, :to_s, :display, :remote_byebug, :debugger, :byebug, :nil?, :hash, :class, :singleton_class, :clone, :dup, :itself, :yield_self, :taint, :tainted?, :untrust, :untaint, :trust, :untrusted?, :methods, :frozen?, :protected_methods, :singleton_methods, :public_methods, :private_methods, :!, :equal?, :instance_eval, :==, :instance_exec, :!=, :__send__, :__id__]
    arr2 = [:nil?, :===, :=~, :!~, :eql?, :hash, :<=>, :class, :singleton_class, :clone, :dup, :itself, :taint, :tainted?, :untaint, :untrust, :untrusted?, :trust, :freeze, :frozen?, :to_s, :inspect, :methods, :singleton_methods, :protected_methods, :private_methods, :public_methods, :instance_variables, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, :remove_instance_variable, :instance_of?, :kind_of?, :is_a?, :tap, :send, :public_send, :respond_to?, :extend, :display, :method, :public_method, :singleton_method, :define_singleton_method, :object_id, :to_enum, :enum_for, :==, :equal?, :!, :!=, :instance_eval, :instance_exec, :__send__, :__id__]

    remaining_arr = arr1-arr2
    remaining_arr
  end

  def Article.some_method
    puts "I am in class related some_method"
  end
end