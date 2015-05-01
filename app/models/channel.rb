class Channel < ActiveRecord::Base
  belongs_to :show

  validates :name, presence: true
end
