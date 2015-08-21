class Speaker < ActiveRecord::Base
  has_many :semesters
  default_scope { order('date ASC') }
end
