class Image < ActiveRecord::Base
  belongs_to :store
  attr_accessible :store_id, :photo
  has_attached_file :photo,
                    :storage => :s3,
                    :s3_credentials => "#{Rails.root}/config/s3.yml",
                    :url  => '/photo/:basename.:extension',
                    :path => 'photo/:basename.:extension',
                    :bucket => 'hippie-gallery'

end
