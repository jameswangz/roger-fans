class CreateAdminMatchVideos < ActiveRecord::Migration
  def change
    create_table :admin_match_videos do |t|
      t.references :match
      t.integer :year
      t.integer :round
      t.integer :part
      t.string :url

      t.timestamps
    end
  end
end
