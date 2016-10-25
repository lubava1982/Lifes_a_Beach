class User < ActiveRecord::Base
  belongs_to :address
  has_many :reviews
  has_many :favorites
  has_secure_password
end
