class Character < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :actor
  belongs_to :show
end
