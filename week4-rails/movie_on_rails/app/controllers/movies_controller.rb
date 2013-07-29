class MoviesController < ApplicationController

def index

end

def show

end

def search
  @query = params[:search]
  @movies = get_data(@query)
  render :show
  # when searching pages, go
end

def get_data(q)
  url = "http://www.omdbapi.com/?s=#{URI.escape(q)}"
  results = JSON.load(open(url).read)
  return results["Search"]
end

def movie
  url = "http://www.omdbapi.com/?i=#{URI.escape(params[:id])}&tomatoes=true"
  @movie = JSON.load(open(url).read)
end

end
