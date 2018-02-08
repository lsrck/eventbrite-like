class EventsController < ApplicationController
  def index
  end

  def new
  	@event = Events.new
  end

  def create
  	@event = Events.new(params[:event])
  	if
  		@event.save
  		redirect_to events_path
  	else
  		render "new"
  	end
  end

  def show
  end
end
