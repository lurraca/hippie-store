class Store < ActiveRecord::Base
  attr_accessible :address, :description, :fbook, :name, :phone1, :phone2, :pinterest, :tags, :twitter, :web
end
