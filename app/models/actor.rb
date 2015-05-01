class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  validates :name, presence: true, length: { minimum: 3 }
end
