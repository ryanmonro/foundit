class User < ApplicationRecord
  has_secure_password
  has_many :founds
  mount_uploader :image, ImageUploader

  def points
    my_founds = Found.where(user_id: id)
    points = 0
    my_founds.each do |f|
      points += f.points
    end
    points
  end

  def points_for_game game_id
    my_founds = Found.where(user_id: id)
    points = 0
    my_founds.each do |f|
      if f.game_location.game_id == game_id
        points += f.points
      end
    end
    points
  end
end
