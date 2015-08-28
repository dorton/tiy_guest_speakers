class TalkSerializer < ActiveModel::Serializer
  attributes :id, :date

  def date
    object.date.strftime('%m/%d/%Y')
  end

end
