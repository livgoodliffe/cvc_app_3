class PagesController < ApplicationController
  def home
  end

  def wheel
    @hardelements = Hardelement.all
    @softelements = Softelement.all
  end

  def about
  end
end
