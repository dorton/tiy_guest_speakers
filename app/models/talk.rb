class Talk < ActiveRecord::Base
  belongs_to :semester
  belongs_to :speaker
end
