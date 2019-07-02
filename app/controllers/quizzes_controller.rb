class QuizzesController < ApplicationController

  def new
    @quiz = Quiz.new
  end

  def create
    @quiz = Quiz.create(quiz_params)
    redirect_to quiz_path(@quiz)
  end

  def show
    @quiz = Quiz.find(params[:id])
  end

  private

  def quiz_params
    params.require(:quiz).permit(:question, :answer)
  end

end
