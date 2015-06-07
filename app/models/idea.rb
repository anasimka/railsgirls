class Idea < ActiveRecord::Base
mount_uploader :picture, PictureUploader
validates_presence_of :name
validates_length_of :name, :minimum=>4
has_many :comments

def self.search(term)
  where("description like ?", "%#{term}%")
end

end
