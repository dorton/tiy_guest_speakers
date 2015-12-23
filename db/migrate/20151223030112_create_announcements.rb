class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.date :date
      t.string :info

      t.timestamps null: false
    end
  end
end
