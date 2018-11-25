class Triangle
  attr_accessor :equilateral, :isosceles, :scalene
 
  def initialize(name)
    @name = name
  end
 
  def get_married(person)
    self.partner = person
    if person.class != Person
      begin
        raise PartnerError
      rescue PartnerError => error
          puts error.message
      end
    else
      person.partner = self
    end
  end
  class TriangleError < StandardError
    # triangle error code
  end
end
