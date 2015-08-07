class AddKeyToSpeakers < ActiveRecord::Migration
  def change
    add_column :speakers, :semester_id, :integer
    add_index  :speakers, :semester_id
  end
end
