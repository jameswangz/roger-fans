class AddIndexToMatchesOrdinal < ActiveRecord::Migration
  def change
	add_index :admin_matches, :ordinal, unique: true 
  end
end
