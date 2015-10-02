class Response
  @@responses = []


  def self.add_response question, *answers
    @@responses << new(question, answers)
  end

  def self.add_dummies *answers
    @@responses << new("$$", answers)
  end

  def self.get_dummies
    @@responses.select{|r| r.good_for? "$$"}
  end

  def self.get_answer question
  responses = @@responses.select{|r| r.good_for? question}
    if responses.length > 0
      responses.sample.get_answers.sample
    else
      Response.get_dummies.sample.get_answers.sample
    end
  end

  def initialize question, answers
    @question = question.downcase
    @answers = answers
  end

  def good_for? question
    question.downcase.include? @question
  end

  def get_answers
    @answers
  end
end


class George < Response
   @qcounter = 0

   def yellingmode param
     if param.match("!")
       get_answer.upcase
     end
   end

def input_output param
  @qcounter+=1
  get_answer param
end

end
