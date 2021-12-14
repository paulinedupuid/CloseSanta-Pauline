class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render 'new'
    end
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def dashboard
    @offers = Offer.where(user_id: current_user)
    @reservations = Reservation.where(user_id: current_user)
  end

  def offer_params
    params.require(:offer).permit(:title, :availability, :location, :price_per_hour, :offer_description, :santa_description)
  end
end
