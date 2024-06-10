require 'json'
require 'open-uri'

class MovieApiClient
  BASE_URL = 'https://tmdb.lewagon.com'

  def self.top_rated_movies
    url = "#{BASE_URL}/movie/top_rated"
    response = URI.open(url).read
    parse_response(response)['results']
  end

  private

  def self.parse_response(response)
    JSON.parse(response)
  end
end

# class MovieApiClient
#   BASE_URL = 'https://tmdb.lewagon.com'

#   def self.top_rated_movies
#     response = HTTP.get("#{BASE_URL}/movie/top_rated")
#     parse_response(response)['results'] || [] # Return only the 'results' array
#   end

#   def self.movie_details(movie_id)
#     response = HTTP.get("#{BASE_URL}/movie/#{movie_id}")
#     parse_response(response)
#   end

#   def self.parse_response(response)
#     if response.status.success?
#       JSON.parse(response.to_s)
#     else
#       { error: response.status }
#     end
#   end
# end
