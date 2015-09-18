class Speaker < ActiveRecord::Base
  has_many :talks
  has_many :semesters, through: :talks
end
