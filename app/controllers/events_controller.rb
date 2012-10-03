class EventsController < ApplicationController
  layout :change_layout
  def index
    @events = Event.where(2)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @events }
    end
  end

  # GET /events/1
  # GET /events/1.json
  
 def show
    
    @event = Event.find(params[:id])
     

    respond_to do |format|
      format.html # events_path
      format.json { render json: events_path }
    end
  end

  def new
    
    @event = Event.new

     respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @event }
    
    end
  end

  # GET /events/1/edit
  def edit
    @event = Event.find(params[:id])
  end

  # POST /events
  # POST /events.json

  
  def create
      
      @event = Event.new(params[:event])

    
    respond_to do |format|
      if @event.save
        format.html { redirect_to root_path, notice: 'No pain no gane' }
        format.json { render json: root_path, status: "No pain no gane", location: root }
      else
        format.html { render action: "new" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /events/1
  # PUT /events/1.json
  def update
    @event = Event.find(params[:id])

    respond_to do |format|
      if @event.update_attributes(params[:event])
        format.html { redirect_to @event, notice: 'event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    respond_to do |format|
      format.html { redirect_to events_url }
      format.json { head :no_content }
    end
  end
  
  def calendar
    
  end

  def change_layout
    if action_name == "show"
      "page"
    else
      "admin"
    end
  end
end