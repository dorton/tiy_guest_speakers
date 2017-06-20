class Talk < ActiveRecord::Base
  belongs_to :semester
  belongs_to :speaker

  default_scope { order('date ASC') }

  def self.matching_talks(week, year)
    talks = []
    Talk.all.each do |talk|
      if talk.date.cweek == week.to_i && talk.date.year == year.to_i
        talks << talk.date
      end
    end
    talks
  end

end
