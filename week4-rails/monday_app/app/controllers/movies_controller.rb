class MoviesController < ApplicationController

def home
  @message = "Anil"
  @movie_title = params[:s]


end


end



#This is just a class full of methods. It has nothing to do with routes.