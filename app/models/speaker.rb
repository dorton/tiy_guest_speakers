class Speaker < ActiveRecord::Base
  belongs_to :semester
  default_scope { order('date ASC') }
end
