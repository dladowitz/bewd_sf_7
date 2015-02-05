module PhotosHelper

  def list_artists
    Artist.all.pluck(:id)
  end
end
