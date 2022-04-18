Rails.application.routes.draw do

  # get("", {:controller => "", :action => ""})
  get("/rock", {:controller => "application", :action => "play_rock"})
end
