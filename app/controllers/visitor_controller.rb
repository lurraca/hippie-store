class VisitorController < ApplicationController
  def home
    @search = Store.search(params[:search])
    @Stores = @search.all
  end

  def shops
    @stores = Store.all
  end

  def shop
    @store = Store.find(params[:store])
  end

  def about
    @aboutvideo = Aboutvideo.all
  end

  def what
  end

  def blog
  end
end
