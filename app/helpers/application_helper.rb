module ApplicationHelper

  def toRad(value)
    value * Math::PI / 180;
  end

  def crow lat1, lon1, lat2, lon2
    radius = 6371
    dLat = toRad(lat2 - lat1)
    dLon = toRad(lon2 - lon1)
    lat1 = toRad(lat1)
    lat2 = toRad(lat2)

    a = Math.sin(dLat / 2) * Math.sin(dLat / 2) +
        Math.sin(dLon / 2) * Math.sin(dLon / 2) * 
        Math.cos(lat1) * Math.cos(lat2) 
    c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));
    d = radius * c
    return d
  end

end
