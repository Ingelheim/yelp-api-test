require 'sinatra'
require 'json'
require 'yelp'

require_relative 'json_parser'

client = Yelp::Client.new({ consumer_key: "uxydoO3kzohti6K37kmptw",
                            consumer_secret: "cGPJjtCcFMzewQ9z4g-65LiX5io",
                            token: "sejY9wDmhaSM8CeBaTUfZ6xmXlX4_F6E",
                            token_secret: "yZPH4CwQ1vQCHf10bH5qjYd5HqQ"
                          })

get '/location' do
  content_type :json
  result = client.search(params['location'], { term: params['term'], sort: 0, limit: 20})

  JSON_Parser.serialize_yelp_result(result)
end
