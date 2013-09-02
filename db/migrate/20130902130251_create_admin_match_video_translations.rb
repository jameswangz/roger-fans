class CreateAdminMatchVideoTranslations < ActiveRecord::Migration
	def up
		Admin::MatchVideo.create_translation_table! opponent: :string
	end

	def down
		Admin::MatchVideo.drop_translation_table!
	end
end
