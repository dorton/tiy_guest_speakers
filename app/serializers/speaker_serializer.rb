class SpeakerSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :pic, :company, :email, :title


  def date
    object.date.strftime('%m/%d/%Y')
  end



end
