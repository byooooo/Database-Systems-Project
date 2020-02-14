class User < ApplicationRecord
  has_many :favorites
  has_many :favorite_institutions, :through =>  :favorites, :source => :favorable, :source_type => "Institution"
  has_many :favorite_degree_programs, :through =>  :favorites, :source => :favorable, :source_type => "DegreeProgram"
end
