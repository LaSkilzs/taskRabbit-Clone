class Api::V1::StudentsController < ApplicationController
    def index
    @students = Student.all
    render json: @students
  end

  def create 
    student = Student.create(student_params)
    if student.save
      render json: student
    else
      render json: {errors: student.errors.full_messages}
    end
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

  def update
    student = Student.find(params[:id])
    if student.update(student_params)
    render json: student
    end
  end

  def destroy
    student = Student.find(params[:id])
    student.destroy
    render json: 204
  end

  private
  def student_params
    params.require(:student).permit(:email, :password, :role)
  end
end