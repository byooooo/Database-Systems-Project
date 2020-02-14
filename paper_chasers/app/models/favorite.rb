class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :favorable, :polymorphic => true
  attr_accessible :user, :favorable
end
