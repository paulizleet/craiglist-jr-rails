class LocalitiesController < ApplicationController
  def index
    @localities = Locality.all
  end

  def show
    @locality = Locality.find(params[:id])
  end
end
