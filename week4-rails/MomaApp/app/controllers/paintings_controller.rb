class PaintingsController < ApplicationController

  def new #get
    @painting = Painting.new
  end

  def create #post
    p = Painting.new(params[:painting])
    if p.save
      redirect_to p
    else
      render :new
    end
  end

  def index #get & read multiple objects
    @paintings = Painting.all
  end

  def show #get & read one object
    @painting = Painting.find(params[:id])
  end

  def edit #get
    @painting = Painting.find(params[:id])
  end

  def update #post
    @painting = Painting.update(params[:id], params[:painting])
    @painting.save
    render :show
  end

  def destroy #deletes
    Painting.find(params[:id]).delete
    redirect_to paintings_path
  end

end