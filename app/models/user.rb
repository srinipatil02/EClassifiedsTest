class User < ActiveRecord::Base
  validates_presence_of :firstname,:lastname,:username,:password
  validates_uniqueness_of :username
  has_many:listings


  def self.authenticate(username="", password="")
    user = User.find_by_username(username)
    if user && user.password=password
      return user
    else
      return false
    end
  end

end
