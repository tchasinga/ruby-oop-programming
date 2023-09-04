# teacher.rb
require_relative 'person'

class Teacher < Person
  def initialize(id, specialization, age = nil, name = nil, parent_permission = nil)
    super(id, age, name, parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
