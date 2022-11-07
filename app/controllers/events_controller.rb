class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show 
    @event = Event.find(params[:id])
  end 

  def attandee
    @event.attandee << current_user
    
    @event.update
  end 

  def new 
    @event = Event.new 
  end 

  def create 
    @event = Event.new(event_params)
    @event.user_id = current_user.id
    @event.attandee = current_user.email

    if @event.save 
      redirect_to root_path
    else 
      render :new 
    end 
  end

  def destroy 
    @event = Event.find(params[:id])
    @event.destroy 
    
    redirect_to root_path
  end

  def update 
    @event = Event.find(params[:id])

    if @event.update(event_params)
      redirect_to @event 
    else 
      redirect_to root_path
    end
  end

  private

  def event_params
    params.require(:event).permit(:date, :user_id, :title, :attandee, :description, :location)
  end
end