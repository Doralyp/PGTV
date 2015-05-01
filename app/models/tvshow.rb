class Tvshow < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :genre
  belongs_to :channel
  has_many :shows_users
  has_many :users through: :shows_users
end
