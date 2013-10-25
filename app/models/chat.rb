class Chat < ActiveRecord::Base
  belongs_to :sender
  belongs_to :recipient
end
