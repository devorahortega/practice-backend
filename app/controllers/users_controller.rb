class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def show
    user = User.find_by(id: params[:id])
    render json: user
  end

  def create
    user = User.new(
      first_name: params["first_name"],
      last_name: params["last_name"],
      age: params["age"],
      email: params["email"],
      address: params["address"],
      phone: params["phone"],
    )
    if user.save
      render json: user
    else
      render json: { errors: user.error.full_messages }, status: 422
    end
  end

  def update
    user = User.find_by(id: params["id"])

    user.first_name = params["first_name"] || user.first_name
    user.last_name = params["last_name"] || user.last_name
    user.age = params["age"] || user.age
    user.email = params["email"] || user.email
    user.address = params["address"] || user.address
    user.phone = params["phone"] || user.phone

    if user.save
      render json: user
    else
      render json: { errors: user.error.full_messages }, status: 422
    end
  end

  def destroy
    user_id = params["id"]
    user = User.find_by(id: user_id)

    user.destroy
    render json: { message: "This user has been destroyed" }
  end
end
