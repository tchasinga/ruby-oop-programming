# person.rb

class Person
  attr_reader :id, :name, :age
  attr_writer :name, :age

  def initialize(id, name = "Unknown", age = 0, parent_permission = true)
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def of_age?
    @age >= 18
  end

  def can_use_services?
    of_age? || @parent_permission
  end
end