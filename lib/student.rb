require_relative 'user'


class Student < User
  attr_accessor :knowledge

  def initialize(first_name, last_name)
    super(first_name, last_name)
    @knowledge = []
  end

  def learn(string)
    @knowledge << string
  end

  def knowledge
    @knowledge
  end
end

#Test student

alice = Student.new("Alice", "Johnson")
alice.learn("The capital of France is Paris")

puts alice.knowledge
# Output: ["The capital of France is Paris"]


