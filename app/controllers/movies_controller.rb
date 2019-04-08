class MoviesController < ApplicationController

    def index
        @movies = Movie.all.order("create_at DESC")
    end

    def show

    end

    def new
        @movie = Movie.new
    end

    def create
        @movie = Movie.new(movie_params)
    end

    private

    def movie_params
        params.permit(:movie).require(:title, :description, :director)
    end

    def find_movie
        @movie = Movie.find(params[:id])
    end
end
