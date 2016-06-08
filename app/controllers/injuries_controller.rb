class InjuriesController < ApplicationController
  include ActionController::HttpAuthentication::Token::ControllerMethods

  def index
    injuries = Injury.all
    render json: injuries, status: 200
  end

  def new

  end

  def create
  end

  def update
  end
end
