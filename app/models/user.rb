class User < ApplicationRecord
  has_many :user_playlists
  has_many :playlists, through: :user_playlists

  has_many :friendships, dependent: :destroy
  has_many :friends, through: :friendships

  has_many :user_concerts
  has_many :concerts, through: :user_concerts

  validates :username, uniqueness: true
end
