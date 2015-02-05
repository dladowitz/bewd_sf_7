# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  story      :text
#  image_id   :string
#  artist_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Photo < ActiveRecord::Base
  attachment :image 
  belongs_to :artist
end
