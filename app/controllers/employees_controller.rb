class EmployeesController < ApplicationController
  include ActionController::HttpAuthentication::Token::ControllerMethods

  def index
    employees = Employee.all
    render json: employees, status: 200
  end

  def new
  end

  def create
  end

  def update
  end
end
