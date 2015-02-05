class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    photo_params
    if @photo.save
      @artist = Artist.find(@photo.artist_id.to_i)
      redirect_to artist_path(@artist)
    else
      render :new
    end
  end

  def show
    @photo = set_photo
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private
  def photo_params
    params.require(:photo).permit(:story, :image, :artist_id)
  end

  def set_photo
    @photo = Photo.find(params[:id])
  end
end
