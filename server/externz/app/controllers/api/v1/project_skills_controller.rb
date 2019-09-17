class Api::V1::ProjectSkillsController < ApplicationController
  def index
    @skills = ProjectSkill.all
    render json: @skills
  end

  def create 
    skill = ProjectSkill.create(project_skill_params)
    if skill.save
      render json: skill
    else
      render json: {errors: skill.errors.full_messages}
    end
  end

  def show
    skill = ProjectSkill.find(params[:id])
    render json: skill
  end

  def update
    skill = ProjectSkill.find(params[:id])
    if skill.update(project_skill_params)
    render json: category
    end
  end

  def destroy
    category = ProjectSkill.find(params[:id])
    category.destroy
    render json: 204
  end

  private
  def project_skill_params
    params.require(:project_skill).permit(:project_id, :skill_id)
  end
end