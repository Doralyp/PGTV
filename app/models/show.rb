class Show < ActiveRecord::Base
  belongs_to :genre
  belongs_to :channel
  has_many :shows_users
  has_many :users, through: :shows_users
  has_many :characters
  has_many :actors, through: :characters
end
