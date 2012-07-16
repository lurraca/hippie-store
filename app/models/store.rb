class Store < ActiveRecord::Base
  has_many :images, :dependent => :destroy
  attr_accessible :address, :description, :fbook, :image, :mainphoto, :name, :logo, :phone1, :phone2, :pinterest, :images_attributes, :tags, :twitter, :web
  accepts_nested_attributes_for :images
   has_attached_file :mainphoto,
                     :storage => :s3,
                     :s3_credentials => "#{Rails.root}/config/s3.yml",
                     :url  => '/mainphoto/:basename.:extension',
                     :path => 'mainphoto/:basename.:extension',
                     :bucket => 'hippie-gallery'
   has_attached_file :logo,
                     :storage => :s3,
                     :s3_credentials => "#{Rails.root}/config/s3.yml",
                     :url  => '/logo/:basename.:extension',
                     :path => 'logo/:basename.:extension',
                     :bucket => 'hippie-gallery'


   def self.search(search)
     if search
       where 'name LIKE ?', "%#{search}%"
       else
         scoped
       end
   end
end
