class CreateSpeakers < ActiveRecord::Migration
  def change
    create_table :speakers do |t|
      t.string :name
      t.date :date
      t.string :pic
      t.string :company
      t.string :email
      t.string :title

      t.timestamps null: false
    end
  end
end
