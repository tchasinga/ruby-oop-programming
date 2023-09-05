# main.rb (example usage)
require_relative 'person'
require_relative 'student'
require_relative 'teacher'

# Create instances of the classes
person = Person.new(1, 'Alice', 20)
student = Student.new(2, 'Class A')
teacher = Teacher.new(3, 'Math')

# Use the methods and properties 
puts "Person can use services: #{person.can_use_services?}"
puts "Student can use services: #{student.can_use_services?}"
puts "Teacher can use services: #{teacher.can_use_services?}"
