class QuestionsController < ApplicationController
  include QuestionsHelper

  before_action :authenticate_user!, except: [:index]

  def index
    @questions = get_question_list()
  end

  def new
    @question = Question.new
    @answer = Answer.new
  end

  def create
    question = Question.new(params.require(:question).permit(:text, :answer))
    post_question(@question)
    redirect_to questions_path
  end
end
