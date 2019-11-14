class UsersController < ApplicationController

  skip_before_action :authenticate_user!, only: :index

  def index
    @user = current_user

    # projects that belong to that user

  end

  def show
    @current_user = current_user
    @params = params
    @user = User.find(params[:id])
    @projects = Project.where(user_id: @user)
  end

end
