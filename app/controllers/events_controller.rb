class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
  	@event = Event.new
  end

  def create
  	@event = Event.new(params_event)
    @event.creator = current_user

  	if
  		@event.save
      flash[:success] = "Votre événement a bien été créé !"
  		redirect_to @event
  	else
  		redirect_to events_path
  	end
  end

  def show
    @event = Event.find(params[:id])
  end
end

private
  def params_event
   params.permit(:name, :description, :date, :place)
  end