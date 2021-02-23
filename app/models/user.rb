class User < ActiveRecord::Base
  has_many :listings
  has_secure_password
  EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\z/i
#shortcut validation format
  validates :username, :presence => true,
                   :uniqueness => true
  validates :email, :presence => true,
                    :format => EMAIL_REGEX
end
