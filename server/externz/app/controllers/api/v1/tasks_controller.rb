class Api::V1::TasksController < ApplicationController
    def index
    @tasks = Task.all
    render json: @tasks
  end

  def create 
    task = Task.create(task_params)
    if task.save
      render json: task
    else
      render json: {errors: task.errors.full_messages}
    end
  end

  def show
    task = Task.find(params[:id])
    render json: task
  end

  def update
    task = task.find(params[:id])
    if task.update(task_params)
    render json: task
    end
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
    render json: 204
  end

  private
  def task_params
    params.require(:task).permit(:name)
  end
end