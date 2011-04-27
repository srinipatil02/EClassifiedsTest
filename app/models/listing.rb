class Listing < ActiveRecord::Base
  validates_presence_of :title, :body
  belongs_to:category
  belongs_to:user
end
