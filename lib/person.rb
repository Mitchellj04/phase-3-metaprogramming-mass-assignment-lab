class Person

  def initialize(arguments)
    arguments.each do |key,value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
    end
  end


end

bob_attributes = {name: "bob", hair_color: "Brown"}

bob = Person.new(bob_attributes)