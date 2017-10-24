class HomeController < ApplicationController
  def index
  	@movies = Movie.all
  end

  def older_movies
  	# filter for movies before 1995
  	@movies = Movie.where("release_date < ?", 1995)
  end

end
