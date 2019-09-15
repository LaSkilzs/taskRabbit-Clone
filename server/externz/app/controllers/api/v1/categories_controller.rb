class Api::V1::CategoriesController < ApplicationController
  def index
    @categories = Category.all
    render json: @categories
  end

  def create 
    category = Category.create(category_params)
    if category.save
      render json: category
    else
      render json: {errors: category.errors.full_messages}
    end
  end

  def show
    category = Category.find(params[:id])
    render json: category
  end

  def update
    category = Category.find(params[:id])
    if category.update(category_params)
    render json: category
    end
  end

  def destroy
    category = Category.find(params[:id])
    category.destroy
    render json: 204
  end

  private
  def category_params
    params.require(:category).permit(:email, :password, :role)
  end
end
