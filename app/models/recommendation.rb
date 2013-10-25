class Recommendation < ActiveRecord::Base
  belongs_to :user
  belongs_to :recommender
end
