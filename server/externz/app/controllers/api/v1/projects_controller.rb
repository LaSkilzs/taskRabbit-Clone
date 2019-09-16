class Api::V1::ProjectsController < ApplicationController
  def index
    @projects = Project.all
    render json: @projects
  end

  def create 
    project = Project.create(project_params)
    if project.save
      render json: project
    else
      render json: {errors: project.errors.full_messages}
    end
  end

  def show
    project = Project.find(params[:id])
    render json: project
  end

  def update
    project = Project.find(params[:id])
    if project.update(project_params)
    render json: project
    end
  end

  def destroy
    project = Project.find(params[:id])
    project.destroy
    render json: 204
  end

  private
  def project_params
    params.require(:project).permit(:email, :password, :role)
  end
end