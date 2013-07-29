class ArtistsController < ApplicationController

  def new #get
    @artist = Artist.new
  end

  def create #post
    a = Artist.new(params[:artist])
    if a.save
      redirect_to a
    else
      render :new
    end
  end

  def index #get & read multiple objects
    @artists = Artist.all
  end

  def show #get & read one object
    @artist = Artist.find(params[:id])
  end

  def edit #get
    @artist = Artist.find(params[:id])
  end

  def update #post
    @artist = Artist.update(params[:id], params[:artist])
    @artist.save
    render :show
  end

  def destroy #deletes
    Artist.find(params[:id]).delete
    redirect_to artists_path
  end

end