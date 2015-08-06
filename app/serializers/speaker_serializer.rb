class SpeakerSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :pic, :company, :email, :title
end
