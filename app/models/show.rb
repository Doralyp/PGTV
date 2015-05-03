class Show < ActiveRecord::Base
  belongs_to :genre
  belongs_to :channel
  has_and_belongs_to_many :users
  has_many :characters
  has_many :actors, through: :characters
  has_many :comments
  has_many :ratings

  validates :title, presence: true

  def rating_average
    ratings.average(:rating_value).to_f
  end
end
