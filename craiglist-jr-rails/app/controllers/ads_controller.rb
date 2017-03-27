class AdsController < ApplicationController


  def new
  end

  def create
    @ad=Ad.new(ad_params)

    byebug
    @ad.save
    redirect_to @ad
  end

  def index
    @ads=Ad.all
  end

  def show
    @ad=Ad.find(params[:id])
  end


  private
    def ad_params
      params.require(:ad).permit(:title, :description, :price)
    end
end
