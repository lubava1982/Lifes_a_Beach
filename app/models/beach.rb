class Beach < ActiveRecord::Base
  belongs_to :address
  has_many :reviews through :users
  has_many :favorites through :users
end
