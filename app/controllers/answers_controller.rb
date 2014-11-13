class AnswersController < ApplicationController

  def new
    @answer = Answer.new
    
  end
  
  def create
    answer = Answer.new(params.require(:answer)
      .permit(:text))
    add_answer(answer)
  end
end
