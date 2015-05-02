class Show < ActiveRecord::Base
  belongs_to :genre
  belongs_to :channel
  has_and_belongs_to_many :users
  has_many :characters
  has_many :actors, through: :characters
  has_many :comments

  validates :title, presence: true
end
