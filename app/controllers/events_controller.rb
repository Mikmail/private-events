class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show 
  end 

  def new 
    @event = Event.new 
  end 

  def create 
    @event = Event.new(event_params)
    @event.user = Current.user 

    if @event.save 
      redirect_to root_path
    else 
      render :new 
    end 
  end

  private

  def event_params
    params.require(:event).permit(:date, :user_id)
  end
end