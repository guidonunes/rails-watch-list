class MoviesController < ApplicationController
  def index
    @movies = MovieApiClient.top_rated_movies['results']
  end

  def show
    @movie = MovieApiClient.movie_details(params[:id])
  end
end
