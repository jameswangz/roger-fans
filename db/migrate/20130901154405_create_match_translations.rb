class CreateMatchTranslations < ActiveRecord::Migration

	def up
		Admin::Match.create_translation_table! name: :string
	end

	def down
		Admin::Match.drop_translation_table!
	end

end
