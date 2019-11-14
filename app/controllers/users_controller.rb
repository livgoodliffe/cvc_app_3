class UsersController < ApplicationController

  skip_before_action :authenticate_user!, only: :index

  def index
    @user = current_user

    # projects that belong to that user

  end

  def show
  end

end
