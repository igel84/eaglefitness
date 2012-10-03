class UserEventsController < ApplicationController
  def create
    @ue = UserEvent.find(params[:id])
  end
end