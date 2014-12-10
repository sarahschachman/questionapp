module AnswersHelper

  def add_answer answer
    json = answer.to_json
    # TODO: the protocol (http), hostname and port should come from a config file
    response = RestClient.post("http://localhost:3000/questions/#{params[:question_id]}/answers", json, :content_type => :json , :accept => :json)
    # TODO: print statements should be changed to log statements
    print "THIS IS THE #{response}"
  end

end
