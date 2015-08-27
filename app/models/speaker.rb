class Speaker < ActiveRecord::Base
  has_many :talks
  has_many :semesters, through: :talks
  default_scope { order('date ASC') }
end
