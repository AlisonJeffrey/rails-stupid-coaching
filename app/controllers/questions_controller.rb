class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @questions = params[:question]
    @answer = if @questions.end_with?('?')
                'Silly question, get dressed and go to work!'
              elsif @questions == 'I am going to work'
                'Great!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
