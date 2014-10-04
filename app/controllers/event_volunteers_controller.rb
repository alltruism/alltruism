class EventVolunteersController < ApplicationController
  # GET /event_volunteers
  # GET /event_volunteers.json
  def index
    @event_volunteers = EventVolunteer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @event_volunteers }
    end
  end

  # GET /event_volunteers/1
  # GET /event_volunteers/1.json
  def show
    @event_volunteer = EventVolunteer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @event_volunteer }
    end
  end

  # GET /event_volunteers/new
  # GET /event_volunteers/new.json
  def new
    @event_volunteer = EventVolunteer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @event_volunteer }
    end
  end

  # GET /event_volunteers/1/edit
  def edit
    @event_volunteer = EventVolunteer.find(params[:id])
  end

  # POST /event_volunteers
  # POST /event_volunteers.json
  def create
    @event_volunteer = EventVolunteer.new(params[:event_volunteer])

    respond_to do |format|
      if @event_volunteer.save
        format.html { redirect_to @event_volunteer, notice: 'Event volunteer was successfully created.' }
        format.json { render json: @event_volunteer, status: :created, location: @event_volunteer }
      else
        format.html { render action: "new" }
        format.json { render json: @event_volunteer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /event_volunteers/1
  # PUT /event_volunteers/1.json
  def update
    @event_volunteer = EventVolunteer.find(params[:id])

    respond_to do |format|
      if @event_volunteer.update_attributes(params[:event_volunteer])
        format.html { redirect_to @event_volunteer, notice: 'Event volunteer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @event_volunteer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_volunteers/1
  # DELETE /event_volunteers/1.json
  def destroy
    @event_volunteer = EventVolunteer.find(params[:id])
    @event_volunteer.destroy

    respond_to do |format|
      format.html { redirect_to event_volunteers_url }
      format.json { head :no_content }
    end
  end
end
