class ListingManager < ActiveRecord::Base
  validates_presence_of :name, :tag_
end
