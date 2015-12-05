class Business_DTO
  def initialize(business)
    @id = business.id
    @name = business.name
    @url = business.url
    @rating = business.rating
    @image_url = business.image_url
    @display_address = business.location.display_address
  end

  def to_hash
    {
      yelp_id: @id,
      name: @name,
      url: @url,
      rating: @rating,
      image_url: @image_url,
      display_address: @display_address.join(', ')
    }
  end
end
