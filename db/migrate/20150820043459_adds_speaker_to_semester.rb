class AddsSpeakerToSemester < ActiveRecord::Migration
  def change
    add_column :semesters, :speaker_id, :integer
    add_index  :semesters, :speaker_id
  end
end
