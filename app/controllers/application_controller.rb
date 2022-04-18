class ApplicationController < ActionController::Base
  layout(false)

  # Add your actions below this line
  # ================================

  def play_rock
    # redirect_to("https://www.wikipedia.org")
    # render({ :plain => "Hello World!"}) #  renders plain text
    # render({ :html => "<h1>Hello World!</h1>".html_safe }) #html_safe => first-> need it to render html, also -> security so 1 user can't inject malicious html into another user browser
    render({ :template => "game_templates/user_rock.html.erb" }) # embedded ruby template
  end

end
