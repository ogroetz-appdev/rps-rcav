class ApplicationController < ActionController::Base
  layout(false)

  # Add your actions below this line
  # ================================

  def homepage
    render({ :template => "game_templates/rules.html.erb" })
  end

  def play_rock
    # redirect_to("https://www.wikipedia.org")
    # render({ :plain => "Hello World!"}) #  renders plain text
    # render({ :html => "<h1>Hello World!</h1>".html_safe }) #html_safe => first-> need it to render html, also -> security so 1 user can't inject malicious html into another user browser
    render({ :template => "game_templates/user_rock.html.erb" }) # embedded ruby template
  end

  def play_paper
    # @ --> instance variable available in user_paper file now
    @comp_move = ["rock", "paper", "scissors"].sample

    if @comp_move == "rock"
      @outcome = "won"
    elsif @comp_move == "paper"
      @outcome = "tied"
    elsif @comp_move == "scissors"
      @outcome = "lost"
    end

    render({ :template => "game_templates/user_paper.html.erb" })
  end
end
