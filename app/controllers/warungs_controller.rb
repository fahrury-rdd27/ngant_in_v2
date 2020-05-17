class WarungsController < ApplicationController
  def index
  	@warungs = Warung.all
  end

end
