class BookmarksController < ApplicationController
  before_action :set_list, only: %i[new create]
  def new
    @bookmark = Bookmark.new
    @movies = MovieApiClient.top_rated_movies
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list
    # @list = List.find(params[:list_id])
    if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to list_path(@bookmark.list), notice: 'Bookmark was successfully destroyed.', status: :see_other
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def parse_movie_ids(movies)
    movies.each { |movie| movie['id'] = movie['id'].to_i }
  end

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end
