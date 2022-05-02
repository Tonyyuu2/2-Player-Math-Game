class Question

  attr_accessor :question, :answer

  def initialize
    first_number = rand(1..20)
    second_number = rand(1..20)
    @question = ("What is #{first_number} + #{second_number}?")
    @answer = first_number + second_number
  end
end