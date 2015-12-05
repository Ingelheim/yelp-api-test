require_relative 'business_DTO'

class JSON_Parser
  def self.serialize_yelp_result(result)
    temp_array = []
    result.businesses.each{|business| temp_array << Business_DTO.new(business).to_hash}
    temp_array.to_json
  end
end
