class Semester < ActiveRecord::Base
  has_many :talks
  has_many :speakers, through: :talks



end
