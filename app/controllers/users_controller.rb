class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
    @students = @users.select { |user| user.admin == false }
  end

  def change_to_admin
    @user = User.find(params[:id])
    @user.toggle!(:admin)
    redirect_to users_url
  end
end
