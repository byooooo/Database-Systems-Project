class DegreeProgram < ApplicationRecord
  has_many :favorites, :as => :favorable
  has_many :fans, :through => :favorites, :source => :user
end
