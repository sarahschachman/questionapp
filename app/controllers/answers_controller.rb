class AnswersController < ApplicationController
  include AnswersHelper
  def new
    @question = Question.find(params[:question_id])
    @answer = @question.answers.build

  end
  
  def create
    answer = Answer.new(params.require(:answer)
      .permit(:text, :question_id))
    add_answer(answer)
  end
end
