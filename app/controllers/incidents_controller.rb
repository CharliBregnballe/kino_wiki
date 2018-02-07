class IncidentsController < ApplicationController
  before_action :set_incident, only: [:show, :edit, :update, :destroy]

  def new
    @incident = Incident.new
  end

  def create
    @incident = Incident.new(incident_params)
    @incident.user_id = current_user.id
    if @incident.save
      redirect_to @incident 
    else
      render :new
    end
  end

  def edit
  end

  def update

    if @incident.update_attributes(incident_params)
      flash[:success] = "Incident updated"
      redirect_to @incident 
    else
      render :edit 
    end
  end

  def destroy
    @incident.destroy
    redirect_to root_path
  end

  private 

    def incident_params
      params.require(:incident).permit(:title, :description, :solution, :status, :user_id)
    end

    def set_incident
      @incident = Incident.find(params[:id])
    end
end
