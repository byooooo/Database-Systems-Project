class Comparison < ApplicationRecord
  belongs_to :user
  belongs_to :degree_program
  belongs_to :institution
end
