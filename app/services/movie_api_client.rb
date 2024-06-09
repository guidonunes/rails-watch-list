require 'http'

class MovieApiClient
  BASE_URL = 'https://tmdb.lewagon.com'

  def self.top_rated_movies
    response = HTTP.get("#{BASE_URL}/movie/top_rated")
    parse_response(response)
  end

  def self.movie_details(movie_id)
    response = HTTP.get("#{BASE_URL}/movie/#{movie_id}")
    parse_response(response)
  end

  private

  def self.parse_response(response)
    if response.status.success?
      JSON.parse(response.to_s)
    else
      { error: response.status }
    end
  end
end
