class Respect < ActiveRecord::Base
  belongs_to :user
  belongs_to :colleague
end
