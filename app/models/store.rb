class Store < ActiveRecord::Base
  attr_accessible :address, :description, :fbook, :mainphoto, :name, :phone1, :phone2, :pinterest, :tags, :twitter, :web
   has_attached_file :mainphoto,
                     :storage => :s3,
                     :s3_credentials => "#{Rails.root}/config/s3.yml",
                     :url  => '/mainphoto/:basename.:extension',
                     :path => 'mainphoto/:basename.:extension',
                     :bucket => 'hippie-gallery'
end
