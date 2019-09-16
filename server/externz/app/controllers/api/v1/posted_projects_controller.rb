class Api::V1::PostedProjectsController < ApplicationController
  def index
    @posted = PostedProject.all
    render json: @posted
  end

  def create 
    posted = PostedProject.create(posted_project_params)
    if posted.save
      render json: posted
    else
      render json: {errors: posted.errors.full_messages}
    end
  end

  def show
    posted = PostedProject.find(params[:id])
    render json: posted
  end

  def update
    posted = PostedProject.find(params[:id])
    if posted.update(posted_project_params)
    render json: posted
    end
  end

  def destroy
    posted = PostedProject.find(params[:id])
    posted.destroy
    render json: 204
  end

  private
  def posted_project_params
    params.require(:posted_project).permit(:email, :password, :role)
  end
end