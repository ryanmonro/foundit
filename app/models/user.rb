class User < ApplicationRecord
  has_secure_password
  has_many :founds

  def points
    my_founds = Found.where(user_id: id)
    points = 0
    my_founds.each do |f|
      points += f.points
    end
    points
  end
end
