class Api::V1::IndustriesController < ApplicationController
  def index
    @industries = Industry.all
    render json: @industries
  end

  def show
    industry = Industry.find(params[:id])
    render json: industry
  end
  
end