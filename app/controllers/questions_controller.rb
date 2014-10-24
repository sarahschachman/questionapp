class QuestionsController < ApplicationController
  include QuestionsHelper

  def index
    @questions = get_question_list()
  end

  def new
    @question = Question.new
  end

  def create
    question = Question.new(params.require(:question).permit(:text))
    post_question(@question)
    redirect_to questions_path
  end
end
