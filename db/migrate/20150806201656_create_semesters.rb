class CreateSemesters < ActiveRecord::Migration
  def change
    create_table :semesters do |t|
      t.date :start_date

      t.timestamps null: false
    end
  end
end
