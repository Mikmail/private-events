class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :destroy]
  
  def index
    @events = Event.all
  end

  def show

  end

  def new
    @event = current_user.events.build
  end

  def create
    @event = current_user.events.build(event_params)
    @event.creator_id = current_user.id

    if @event.save 
      redirect_to user_path(current_user.id)
    else 
      render :new 
    end 
  end

  def edit

  end

  def update

  end


  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:date, :creator_id, :title, :attandee, :description, :location)
  end
end