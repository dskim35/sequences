class GuessesController < ApplicationController
  def index
    @guess1 = params["first_number"]
    @guess2 = params["second_number"]
    @guess3 = params["third_number"]
    @guess_check = "No."

    if @guess1<@guess2 && @guess2<@guess3
      @guess_check = "Yes!"
    end
    
    render("guesses/index.html.erb")
  end

  def answer
    @user_answer = params["q"]
    render("guesses/answer.html.erb")
  end
end
