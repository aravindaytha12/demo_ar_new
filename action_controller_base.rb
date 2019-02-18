$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'aspector'
require 'logger'
require 'date'
require 'pry'
# # Keep data for the current month only  
Logger.new('this_month.log', 'monthly')   
Logger.new('application.log', 20, 'daily')  
Logger.new('application.log', 0, 100 * 1024 * 1024)
Logger.new('application.log', 20, 'daily') 



class ActionControllerBase
  $LOG = Logger.new('log_file.log', 'daily')  
  # Aspect used as a logging hookup
  class LoggingAspect < Aspector::Base
    ALL_METHODS = /.*/
    #ALL_CLASSES = /.*/
binding.pry
    around ALL_METHODS, except: :class, method_arg: true do |method, proxy, *args, &block|
      class_method = "#{self.class} :: #{method}"
      cur_date = Time.now
      my_thread_id = Thread.current.object_id

binding.pry
      $LOG.debug("#{DateTime.now.strftime('%Q')} :: #{my_thread_id} :: #{class_method} :: STARTED")
      cur_date1 = Time.now
      result = proxy.call(*args, &block)
      $LOG.debug("#{DateTime.now.strftime('%Q')} :: #{my_thread_id} :: #{class_method} :: ENDED")
      result
    end
  end


  LoggingAspect.apply(ActionControllerBase)
  

  puts 'LoggingAspect is applied'
end