module QuestionsHelper
  require 'rest-client'
  require 'json'

  # TODO: in all RestClient calls, the protocol (http), hostname and port should come from a config file

  def get_question_list
    json= RestClient.get("http://localhost:3000/questions")
    JSON.parse(json)
  end

  def parsed_questions
    json= RestClient.get("http://localhost:3000/questions")
    parsed = JSON.parse(json)
    parsed
  end



  def post_question question
    json = question.to_json(:include => :answers)
    response = RestClient.post('http://localhost:3000/questions', json, :content_type => :json , :accept => :json)
    # TODO: print statements should be changed to log statements (e.g. debug)
    print "THIS IS THE #{response}"
  end
end

