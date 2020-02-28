class Institution < ApplicationRecord
  has_many :favorites, :as => :favorable
  has_many :fans, :through => :favorites, :source => :user
  has_one :student_demographic_profile
  has_one :cost_and_financial_aid_profile
end
