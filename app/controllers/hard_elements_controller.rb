class HardElementsController < ApplicationController

  skip_before_action :authenticate_user!

  HARDELEMENTS = {
    1 => { name: "public realm", whiteicon: "white_icons/public_realm" },
    2 => { name: "transport", whiteicon: "white_icons/transport"},
    3 => { name: "community", whiteicon: "white_icons/community"},
    4 => { name: "retail", whiteicon: "white_icons/retail"},
    5 => { name: "commercial", whiteicon: "white_icons/commercial"},
    6 => { name: "health & wellbeing", whiteicon: "white_icons/health_wellbeing" },
    7 => { name: "education", whiteicon: "white_icons/education"},
    8 => { name: "recreation & entertainment", whiteicon: "white_icons/recreation"},
    9 => { name: "residential", whiteicon: "white_icons/residential"}
  }

  def index
    @hardelements = HARDELEMENTS
  end

  def show
    @hardelements = HARDELEMENTS
    @hardelement = Hardelement.find(params[:id])
  end

end
