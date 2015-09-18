class Semester < ActiveRecord::Base
  has_many :talks
  has_many :speakers, through: :talks

  def name
    start_date.strftime('%m/%d/%Y')    
  end

end
