class CreateTalks < ActiveRecord::Migration
  def change
    create_table :talks do |t|
      t.integer :semester_id
      t.integer :speaker_id
      t.timestamps null: false
    end
  end
end
