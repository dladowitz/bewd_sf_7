# == Schema Information
#
# Table name: photos
#
#  id          :integer          not null, primary key
#  image_url   :string
#  description :text
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Photo < ActiveRecord::Base
  belongs_to :user

  def popular_person
    Photo.where(user_id: self.user_id).count > 2 
  end

  def fav_count
    self.fav_count += 1 
    self.save!
  end

end
