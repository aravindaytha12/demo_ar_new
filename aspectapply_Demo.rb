require './app/controllers/application_controller.rb'
require './app/controllers/students_controller.rb'
require './app/models/application_record.rb'
require './app/models/student.rb'

require './main_aspect.rb'

LoggingAspect.enable #Disable for the case, for not tracking in the log
LoggingAspect.apply(ApplicationController, methods: ["controller_instance_method"])
LoggingAspect.apply(StudentsController, methods: ["index","show","new","edit"])
LoggingAspect.apply(Student, methods: ["Student.model_class_method", "model_instance_method"])
