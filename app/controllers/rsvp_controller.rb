class RsvpController < ApplicationController
  def new
    @rsvp = Rsvp.new
  end

  def create
    @rsvp = Rsvp.new rsvp_create_params
    if @rsvp.save!
      render 'success'
    else
      render 'new'
    end
  end

  def list
    @rsvps = Rsvp.all
    render 'list'
  end

  private

  def rsvp_create_params
    params.require(:rsvp).permit(:full_name, :is_coming, :has_plus_one, :plus_one_full_name)
  end
end
