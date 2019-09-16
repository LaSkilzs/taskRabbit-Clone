class Api::V1::BusinessesController < ApplicationController
  def index
    @businesses = Business.all
    render json: @businesses
  end

  def create 
    business = Business.create(business_params)
    if business.save
      render json: business
    else
      render json: {errors: business.errors.full_messages}
    end
  end

  def show
    business = Business.find(params[:id])
    render json: business
  end

  def update
    business = Business.find(params[:id])
    if business.update(business_params)
    render json: business
    end
  end

  def destroy
    business = Business.find(params[:id])
    business.destroy
    render json: 204
  end

  private
  def business_params
    params.require(:business).permit(:email, :password, :role)
  end
end