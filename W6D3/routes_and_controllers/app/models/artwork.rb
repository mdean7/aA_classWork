class Artwork < ApplicationRecord

validates :title, {scope: :artist_id}, uniqueness:true
validates :image_url, uniqueness:true, presence:true
validates :artist_id, uniqueness:true, presence:true


belong_to :artist,
  foreign_key: :artist_id,
  class_name: :User

 has_many :shares,
  foreign_key: :artwork_id,
  class_name: :ArtworkShare

has_many :shared_viewers,
  through: :shares,
  source: :viewer

end
