class VisitorController < ApplicationController
  def home
  end

  def shops
    @stores = Store.all
  end

  def shop
  end

  def about
    @aboutvideo = Aboutvideo.all
  end

  def what
  end

  def blog
  end
end
