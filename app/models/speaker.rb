class Speaker < ActiveRecord::Base
  has_many :talks, dependent: :destroy
  has_many :semesters, through: :talks
end
