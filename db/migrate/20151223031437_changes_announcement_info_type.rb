class ChangesAnnouncementInfoType < ActiveRecord::Migration
  def change
    change_column :announcements, :info, :text
  end
end
