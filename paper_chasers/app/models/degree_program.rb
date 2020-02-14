class DegreeProgram < ApplicationRecord
  belongs_to :institution
  has_many :favorites, :as => :favorable
  has_many :fans, :through => :favorites, :source => :user
end
