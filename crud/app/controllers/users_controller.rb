class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update, :destroy]
  def index
    @users=User.all
  end

  def edit
  end

  def update
    @user.update(user_params)
    @users = User.all
    render "index"
  end

  def new
    @user=User.new
  end

  def show
    puts "--in private"
  end

  def create
    @user=User.create!(user_params)
    @users = User.all
    render "index"
  end

  def destroy
    @user.delete
    @users = User.all
    render "index"
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone)
  end

end
