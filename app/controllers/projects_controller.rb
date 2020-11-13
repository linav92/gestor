class ProjectsController < ApplicationController
  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only: :dashboard
  def index
  end

  def dashboard
    @projects = Project.all
  end

  def create
    @project = Project.create(name: params[:name], 
                              description: params[:description], 
                              start_on: params[:start_on], 
                              finish_on: params[:finish_on], 
                              states: params[:states])
    @project.save
  end
end
