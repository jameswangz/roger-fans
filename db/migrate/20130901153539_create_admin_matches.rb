class CreateAdminMatches < ActiveRecord::Migration
  def change
    create_table :admin_matches do |t|
      t.integer :ordinal

      t.timestamps
    end
  end
end
