class SpeakerSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :pic, :company, :email, :title, :semester_start_date


  def date
    object.date.strftime('%m/%d/%Y')
  end

  def semester_start_date
    object.semester.start_date.strftime('%m/%d/%Y')
  end

end
