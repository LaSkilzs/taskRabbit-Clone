class Api::V1::AuthController < ApplicationController
require('byebug')

  def login
    user = User.find_by(email: params["email"])
    if user && user.authenticate(params["password"])
      payload = {user_id: user.id}
      token = JWT.encode(payload, "fooseball")
      render json: {user: UserSerializer.new(user), jwt: token}
    end
  end
  
  def authenticate
    auth_header = request.headers['Authorization']
    token = auth_header.split("\"")[1]
    #  byebug
    decoded_token = JWT.decode(token, "fooseball", true, {algorithm: 'HS256'})
   
    user_id = decoded_token[0]['user_id']
    user = User.find(user_id)
      if user.valid? && user.role == "student"
        @student = Student.find_by(user_id: user.id)
        render json: {student: user.students, user: user}
      elsif user.valid? && user.role == "business" || user.role == "admin"
        @business = Business.find_by(user_id: user.id)
        render json: {business: @business, user: user}
      else
        render json: {errors: user.errors.full_messages}
      end  
  end
end