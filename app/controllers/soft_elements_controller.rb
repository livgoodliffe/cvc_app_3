class SoftElementsController < ApplicationController

  skip_before_action :authenticate_user!

  SOFTELEMENTS = {
    1 => { name: "people", whiteicon: "white_icons/people" },
    2 => { name: "place", whiteicon: "white_icons/place" },
    3 => { name: "diverse", whiteicon: "white_icons/diverse" },
    4 => { name: "connected", whiteicon: "white_icons/connected" },
    5 => { name: "active & healthy", whiteicon: "white_icons/active_healthy" },
    6 => { name: "local economy", whiteicon: "white_icons/local_economy" },
    7 => { name: "safe", whiteicon: "white_icons/safe" },
    8 => { name: "sustainable", whiteicon: "white_icons/sustainable" },
    9 => { name: "time", whiteicon: "white_icons/time" }
  }

  def index
    @softelements = SOFTELEMENTS
  end

  def show
    @softelement = Softelement.find(params[:id])
  end

end
