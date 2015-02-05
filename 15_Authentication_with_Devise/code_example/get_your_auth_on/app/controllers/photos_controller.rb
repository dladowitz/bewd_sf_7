class PhotosController < ApplicationController
  
  def index
  end

  def show
    @photo = get_photo
    @user = @photo.user
    @user_photos = @user.photos
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      redirect_to photo_path(@photo)
    else
      render :new
    end
  end


  def edit
  end

  private

  def photo_params
    params.require(:photo).permit(:image_url, :description, :user_id)
  end

  def get_photo
    @photo = Photo.find(params[:id])
  end



end
