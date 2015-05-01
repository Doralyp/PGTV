class Channel < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :show
end
