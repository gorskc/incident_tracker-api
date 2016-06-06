class IncidentsController < ApplicationController
  include ActionController::HttpAuthentication::Token::ControllerMethods

  def index
    incidents = Incident.all
    render json: incidents, status: 200
  end

  def new
  end

  def create
  end

  def update
  end

end
