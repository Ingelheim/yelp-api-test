class JSON_Parser
  def self.serialize_yelp_result(result)
    temp_array = []
    result.businesses.each{|business| temp_array << self.serialize_business(business)}
    temp_array.to_json
  end

  def self.serialize_business(business)
    {
      id: business.name,
      name: business.name,
      url: business.url,
      rating: business.rating,
      snippet_text: business.snippet_text,
      image_url: business.image_url,
      display_address: business.location.display_address
    }
  end
end
