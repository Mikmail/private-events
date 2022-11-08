class AttendingEventsController < ApplicationController
  before_action :set_event, only: [:new, :create, :destroy]

  def new;end

  def create 
    @event.attendees << current_user
    flash[:notice] = "You have succesfully registered for the event!"
    redirect_to root_path
  end

  def destroy 
    @event.attendees.delete(current_user)
    redirect_to root_path
  end

  def set_event
    @event = Event.find(params[:id])
  end
end
