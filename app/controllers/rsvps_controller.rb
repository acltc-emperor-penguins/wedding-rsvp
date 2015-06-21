class RsvpsController < ApplicationController

  def index
    @rsvps = Rsvp.all
  end

  def new
    @rsvp = Rsvp.new
  end

  def show
    @rsvp = Rsvp.find_by(id: params[:id])
  end

  def create
    rsvp = Rsvp.create(params[:rsvp])
    redirect_to "/rsvps/#{rsvp.id}"
  end

  def edit
    @rsvp = Rsvp.find_by(id: params[:id])
  end

  def update
    rsvp = Rsvp.find_by(id: params[:id])
    rsvp.update(params[:rsvp])
    redirect_to "/rsvps/#{rsvp.id}"
  end

  def destroy
    Rsvp.find_by(id: params[:id]).destroy
    redirect_to "/rsvps"
  end


end
