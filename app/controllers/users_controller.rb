class UsersController < ApplicationController

  def show
    @current_user = current_user
    @params = params
    @user = User.find(params[:id])
    @projects = Project.where(user_id: @user)
  end

end
