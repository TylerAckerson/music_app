class AlbumsController < ApplicationController

  def show
    @album = Album.find(params[:id])
    render :show
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.create(album_params)

    if @album.save
      flash.notice = "album created"
      redirect_to album_url(@album)
    else
      flash.now.notice = "album creation failed"
      render :new
    end

  end

    # def edit
    #   @band = Band.find(params[:id])
    #   render :edit
    # end
    #
    # def update
    #   @band = Band.find(params[:id])
    #
    #   if @band.update!(band_params)
    #     flash.notice = "band updated"
    #     redirect_to band_url(@band)
    #   else
    #     flash.alert = "update failed"
    #     render :edit
    #   end
    # end
    #
    # def destroy
    #   @band = Band.find(params[:id])
    #   if @band.delete
    #     redirect_to bands_url
    #   else
    #     redirect_to band_url(@band)
    #   end
    # end

    private
    def album_params
      params.require(:album).permit(:name, :band_id, :setting)
    end

end
