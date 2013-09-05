class Admin::MatchVideo < ActiveRecord::Base

	belongs_to :match
	translates :opponent
	scope :ordered, -> { joins(:match).order('year DESC, admin_matches.ordinal DESC, round DESC')  }
	scope :for_year, lambda { |value| where('year = ?', value) unless value.blank?  }
	scope :for_match, lambda { |value| where('admin_matches.id = ?', value) unless value.blank?  }
	scope :for_opponent, lambda { |value| where('opponent like ?', "%#{value}%") unless value.blank?  }

	def self.search(params)
		with_translations(I18n.locale)
			.for_year(params[:year])
			.for_match(params[:match])
			.for_opponent(params[:opponent])
			.ordered
	end
	

end
