class AnswersController < ApplicationController
  def action
    @user_question = params[:question]
    @answer = ''

    @answer = case
              when @user_question == 'I am going to work'
                'Great!'
              when @user_question.include?('?')
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
