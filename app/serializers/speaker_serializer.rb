class SpeakerSerializer < ActiveModel::Serializer
  attributes :id, :date, :name, :pic, :company, :email, :title, :semester

  has_many :talks
  has_many :semesters

def semester
  object.semesters.pluck(:id).last
end

def date
  object.talks.pluck(:date).last.strftime('%m/%d/%Y')
end



end
