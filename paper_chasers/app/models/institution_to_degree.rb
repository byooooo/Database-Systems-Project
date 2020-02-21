class InstitutionToDegree < ApplicationRecord
  belongs_to :institution
  belongs_to :degree_program
end
