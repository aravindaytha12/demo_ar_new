$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'aspector'
require 'logger'
require 'date'

$LOG = Logger.new('log_file_test.log', 'daily')
$LOG.formatter = proc do |severity, datetime, progname, msg|
  "#{msg}\n"
end


class LoggingAspect < Aspector::Base
puts "========================Am in LoggingAspect class========================"
  ALL_METHODS = /.*/
  #ALL_CLASSES = /.*/
# binding.pry
    around ALL_METHODS, method_arg: true, class_methods: true do |method, proxy, *args, &block|
# binding.pry #p method
    class_method = "#{self.class} :: #{method}"
    cur_date = Time.now
    my_thread_id = Thread.current.object_id

    $LOG.debug("#{DateTime.now.strftime('%Q')} :: #{my_thread_id} :: #{class_method} :: STARTED")
    cur_date1 = Time.now
    result = proxy.call(*args, &block)
    $LOG.debug("#{DateTime.now.strftime('%Q')} :: #{my_thread_id} :: #{class_method} :: ENDED")
    result
  end
end

# method_names_arr = (PagesController.instance_methods(false).to_a + PagesController.private_instance_methods(false).to_a + PagesController.action_methods.to_a)

# method_names_arr.map!(&:to_sym).uniq
# LoggingAspect.apply(PagesController, methods: method_names_arr)