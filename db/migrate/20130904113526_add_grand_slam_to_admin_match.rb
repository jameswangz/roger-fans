class AddGrandSlamToAdminMatch < ActiveRecord::Migration
  def change
	add_column :admin_matches, :grand_slam, :boolean
  end
end
