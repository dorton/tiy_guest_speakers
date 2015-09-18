class Talk < ActiveRecord::Base
  belongs_to :semester
  belongs_to :speaker

  default_scope { order('date ASC') }

def name
  date.strftime('%m/%d/%Y') + " - " + speaker.name
end

end
