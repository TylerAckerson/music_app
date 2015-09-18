class BandsController < ApplicationController

  def index
    @bands = Band.all
    render :index
  end

  def new
    @band = Band.new
  end

  def create
    @band = Band.create(band_params)

    if @band.save
      flash.notice = "band created"
      redirect_to band_url(@band)
    else
      flash.now.notice = "band creation failed"
      render :new
    end

  end

  def show
    @band = Band.find(params[:id])
    render :show
  end

  def edit
    @band = Band.find(params[:id])
    render :edit
  end

  def update
    @band = Band.find(params[:id])

    if @band.update!(band_params)
      flash.notice = "band updated"
      redirect_to band_url(@band)
    else
      flash.alert = "update failed"
      render :edit
    end
  end

  def destroy
    @band = Band.find(params[:id])
    if @band.delete
      redirect_to bands_url
    else
      redirect_to band_url(@band)
    end
  end

  private
  def band_params
    params.require(:band).permit(:name)
  end
end
