class IncidentsController < ApplicationController
  include ActionController::HttpAuthentication::Token::ControllerMethods

  def index
    incidents = Incident.all
    render json: incidents, status: 200
  end

  def new
    incident = Incident.new
    render json: incident, status: 200
  end

  def create
    incident = Incident.create
  end

  def update
    incident = Inciddent.update
  end

  def edit
  end

  def show
  end

end
