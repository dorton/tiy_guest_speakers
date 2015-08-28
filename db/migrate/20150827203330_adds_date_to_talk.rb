class AddsDateToTalk < ActiveRecord::Migration
  def change
    add_column :talks, :date, :date
  end
end
