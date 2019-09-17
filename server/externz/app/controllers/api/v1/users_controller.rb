require 'byebug'

class Api::V1::UsersController < ApplicationController
  wrap_parameters format: [:json, :xml, :url_encoded_form, :multipart_form]

    def index
    @users = User.all
    render json: @users
  end

  def create 
    user = User.create("email": params["email"], "role": params["role"],"password": params["password"])
    payload = {user_id: user.id}
    token = JWT.encode(payload, "fooseball")

    if user.save
      render json: {user: user, jwt: token}
    else
      render json: {errors: user.errors.full_messages}
    end
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
    render json: user
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    render json: 204
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :role)
  end
end