class User < ActiveRecord::Base
  has_secure_password
  has_many :views
  has_many :exercises, through: :views
end
