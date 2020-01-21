class QuestionsController < ApplicationController

    # Fake DB records
  ANSWERS = {
    1 => { answer: "I don't care, get dressed and go to work!" },
    2 => { answer: "Silly question, get dressed and go to work!" },
    3 => { answer: "Great!" }
  }

  def ask
  end

  def answer
    if params[:question] == "I am going to work"
      @question = params[:question]
      @answer = "Great"
    elsif params[:question].include? "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

  def create
  end
end
