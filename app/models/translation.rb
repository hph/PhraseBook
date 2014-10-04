class Translation < ActiveRecord::Base
  belongs_to :user
  belongs_to :phrase
end
