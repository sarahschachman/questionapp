module AnswersHelper

  def add_answer answer
    json = answer.to_json
    response = RestClient.post('http://localhost:3000/questions', json, :content_type => :json , :accept => :json)
    print "THIS IS THE #{response}"
  end
  
end
