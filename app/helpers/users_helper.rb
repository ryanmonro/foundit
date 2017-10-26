module UsersHelper
  def locations_found user
    locations_arr = []
    user.founds.each do |found|
      locs = found.game_location.location.id
      locations_arr.push(locs)
    end
    locations_arr.uniq
  end
end
