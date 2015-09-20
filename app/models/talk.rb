class Talk < ActiveRecord::Base
  belongs_to :semester
  belongs_to :speaker

  default_scope { order('date ASC') }



end
