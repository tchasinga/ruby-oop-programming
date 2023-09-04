# student.rb
require_relative 'person'

class Student < Person
  def initialize(id, classroom, age = nil, name = nil, parent_permission = nil)
    super(id, age, name, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯\\(ツ)/¯'
  end
end
