class Question
  attr_reader :question_answer

  def initialize
    @question_answer = self.generate_question_answer
  end

  def generate_question_answer
    first_operand = rand(1..50)
    second_operand = rand(1..50)
    @question_answer = [
      "What does #{first_operand} plus #{second_operand} equal?",
      "#{first_operand + second_operand}"
    ]
  end

  def answer? answer
    answer == question_answer.last
  end
end
