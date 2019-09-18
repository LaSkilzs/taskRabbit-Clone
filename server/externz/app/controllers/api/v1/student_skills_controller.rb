class Api::V1::StudentSkillsController < ApplicationController
    def index
    @skills = StudentSkill.all
    render json: @skills
  end

  def create 
    skills = StudentSkill.create(studentskills_params)
    if skills.save
      render json: skills
    else
      render json: {errors: skills.errors.full_messages}
    end
  end

  def show
   skills = Studentskill.find(params[:id])
    render json: studentskills
  end

  def update
    skills = StudentSkill.find(params[:id])
    if studentskills.update(studentskills_params)
    render json: studentskills
    end
  end

  def destroy
    skills = StudentSkill.find(params[:id])
    skills.destroy
    render json: 204
  end

  private
  def studentskills_params
    params.require(:student_skill).permit(:level, :student_id, :skill_id)
  end
end