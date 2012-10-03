class CoachesController < ApplicationController
  def index
    @coach = Coach.find("role = 'coach' AND id = #{params[:id]}")

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @coaches }
    end
  end
   def show
    @coaches = Coach.where("role = 'coach'")

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @coach }
    end
  end
   def create
    @a = User.new(params[:id])
    @user.role = 'coach'
    c = CoachC.new
    c.save
    @coach =  @user.coaches.build(:coach_c_id => c.id)
    

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @event }
    end
  end
end
