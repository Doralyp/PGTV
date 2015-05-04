class Channel < ActiveRecord::Base
  #ZM: Should be has_many
  belongs_to :show

  validates :name, presence: true
end
