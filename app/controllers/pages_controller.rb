class PagesController < ApplicationController

  skip_before_action :authenticate_user!

  def home
  end

  def wheel
    @hardelements = Hardelement.all
    @softelements = Softelement.all
  end

  def about
  end
end
