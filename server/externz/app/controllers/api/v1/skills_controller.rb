class Api::V1::SkillsController < ApplicationController
    def index
    @skills = Skill.all
    render json: @skills
  end

  def create 
    skill = Skill.create(skill_params)
    if skill.save
      render json: skill
    else
      render json: {errors: skill.errors.full_messages}
    end
  end

  def show
    skill = Skill.find(params[:id])
    render json: skill
  end

  def update
    skill = Skill.find(params[:id])
    if skill.update(skill_params)
    render json: skill
    end
  end

  def destroy
    skill = Skill.find(params[:id])
    skill.destroy
    render json: 204
  end

  private
  def skill_params
    params.require(:skill).permit(:email, :password, :role)
  end
end