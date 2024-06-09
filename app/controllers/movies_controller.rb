class MoviesController < ApplicationController
  def index
    @movies = MovieApiClient.top_rated_movies['results']
    @movies = movies_response['results']
    @movie_details = @movies.map { |movie| { id: movie["id"], title: movie["title"] } }
  end

  def show
    @movie = MovieApiClient.movie_details(params[:id])
  end
end
