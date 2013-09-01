class CreateMatchTranslations < ActiveRecord::Migration

	def up
		Match.create_translation_table! name: :string
	end

	def down
		Match.drop_translation_table!
	end

end
