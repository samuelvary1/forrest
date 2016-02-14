class User < ActiveRecord::Base
  has_many :user_matches
  has_many :matches, through: :user_matches
  belongs_to :tournament
end
