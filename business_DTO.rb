class Business_DTO
  def initialize(business)
    @id = business.id
    @name = business.name
    @url = business.url
    @rating = business.rating
    @snippet_text = business.snippet_text
    @image_url = business.image_url
    @display_address = business.location.display_address
  end

  def to_hash
    {
      id: @id,
      name: @name,
      url: @url,
      rating: @rating,
      snippet_text: @snippet_text,
      image_url: @image_url,
      display_address: @display_address
    }
  end
end
