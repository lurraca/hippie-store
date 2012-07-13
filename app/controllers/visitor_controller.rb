class VisitorController < ApplicationController
  def home
    @search = Store.search(params[:search])
    @Stores = @search.all
  end

  def shops
    @stores = Store.all
    @search = Store.search(params[:search])
  end

  def shop
    @store = Store.find(params[:store])
    @search = Store.search(params[:search])
  end

  def about
    @aboutvideo = Aboutvideo.all
    @search = Store.search(params[:search])
  end

  def what
    @search = Store.search(params[:search])
  end

  def search
    
  end
end
