class Category < ActiveRecord::Base
  validates_presence_of:category_name
  validates_uniqueness_of:category_name

  has_many:listings
end
