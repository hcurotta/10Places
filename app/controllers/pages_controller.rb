class PagesController < ApplicationController

def home
  if current_user
    redirect_to "/users/#{current_user.id}"
  end
end

def discover
  @lists = List.all
end

end