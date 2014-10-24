module QuestionsHelper
  require 'rest-client'
  require 'json'

  def get_question_list
    json= RestClient.get("http://localhost:3000/questions")
    JSON.parse(json)
  end

  def post_question question
    json = question.to_json
    response = RestClient.post('http://localhost:3000/questions', :data => json, :content_type => :json , :accept => :json)
    print "THIS IS THE #{response}"
  end
end

