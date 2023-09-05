class Nameable
    def correct_name
      raise NotImplementedError, 'Subclasses must implement the correct_name method'
    end
  end
  
  class Person < Nameable
    attr_reader :name
  
    def initialize(age, name)
      super()
      @age = age
      @name = name
    end
  
    def correct_name
      @name
    end
  end
  
  class Decorator < Nameable
    def initialize(nameable)
      @nameable = nameable
    end
  
    def correct_name
      @nameable.correct_name
    end
  end
  
  class CapitalizeDecorator < Decorator
    def correct_name
      super.capitalize
    end
  end
  
  class TrimmerDecorator < Decorator
    def correct_name
      super[0..9]
    end
  end
  
  # Example usage
  person = Person.new(22, 'maximilianus')
  puts person.correct_name
  
  capitalized_person = CapitalizeDecorator.new(person)
  puts capitalized_person.correct_name
  
  capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
  puts capitalized_trimmed_person.correct_name
  