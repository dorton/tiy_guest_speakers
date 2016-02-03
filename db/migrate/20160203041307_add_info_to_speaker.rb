class AddInfoToSpeaker < ActiveRecord::Migration
  def change
    add_column :speakers, :twitter, :string
    add_column :speakers, :linkedin, :string
    add_column :speakers, :company_url, :string
    add_column :speakers, :company_logo, :string
    add_column :speakers, :company_about, :string
    add_column :speakers, :bio, :string
    add_column :speakers, :github, :string
  end
end
