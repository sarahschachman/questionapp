class QuestionsController < ApplicationController
  include QuestionsHelper


  before_action :authenticate_user!, except: [:index]

  def index
    @questions = parsed_questions()
  end

  def new
    @question = Question.new
    @question.answers.build
  end

  def create
    question = Question.new(params.require(:question)
      .permit(:text,
        answers_attributes:[:text]))
    question.user_id = current_user.id
    post_question(question)
    redirect_to new_question_path, notice: "Your question has been submitted! Enter another if you would like."
  end

  def show
    @questions = get_question_list()
    @question_id = params[:id]
    @question = @questions[(params[:id]).to_i - 1]["text"]
    @answers = @questions[(params[:id]).to_i - 1]["answers"]
    @answer = Answer.new


  end

  def feedback
    user_knowledge = (params[:correct] == "yes" ? "knew" : "didn't know")
    analyzer.info("User #{current_user.id} #{user_knowledge} question #{params[:id]}")
    respond_to do |format|
        format.js { render :nothing => true }
    end
  end

end
