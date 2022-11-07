class UsersController < ApplicationController

  def show 
  end 
  
  def index 
    @events = current_user.events
  end 

  def show_attended_events
    @attended_events = current_user.attended_events
  end 
  
end