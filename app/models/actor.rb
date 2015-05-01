class Actor < ActiveRecord::Base
  # Remember to create a migration!
  has_many :characters
  has_many :shows, through: :character
end
