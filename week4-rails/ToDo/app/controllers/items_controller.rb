class ItemsController < ApplicationController

  def new #get
    @item = Item.new
  end

  def create #post
    i = Item.new(params[:item])
    if i.save
      redirect_to i
    else
      render :new
    end
  end

  def index #get & read multiple objects
    @items = Item.all
  end

  def show #get & read one object
    @item = Item.find(params[:id])
  end

  def edit #get
    @item = Item.find(params[:id])
  end

  def update #post
    @item = Item.update(params[:id], params[:item])
    @item.save
    render :show
  end

  def destroy #deletes
    Item.find(params[:id]).delete
    redirect_to items_path
  end

end