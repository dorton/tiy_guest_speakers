class SpeakerSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :pic, :company, :email, :title

has_many :semesters

  def date
    object.date.strftime('%m/%d/%Y')
  end



end
