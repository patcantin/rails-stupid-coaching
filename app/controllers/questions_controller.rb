class QuestionsController < ApplicationController

  def ask
  end

  def answer
    if params[:question] == "I am going to work"
      @question = params[:question]
      @answer = "Great"
    elsif params[:question].include? "?"
      @question = params[:question]
      @answer = "Silly question, get dressed and go to work!"
    else
      @question = params[:question]
      @answer = "I don't care, get dressed and go to work!"
    end
  end

  def create
  end
end
