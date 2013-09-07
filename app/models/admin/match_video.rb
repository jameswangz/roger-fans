class Admin::MatchVideo < ActiveRecord::Base

	belongs_to :match
	translates :opponent
	scope :ordered, -> { joins(:match).order('year DESC, admin_matches.ordinal DESC, round DESC')  }
	scope :for_year, lambda { |value| where('year = ?', value) unless value.blank?  }
	scope :for_match, lambda { |value| where('match_id = ?', value) unless value.blank?  }
	scope :for_opponent, lambda { |value| where('opponent like ?', "%#{value}%") unless value.blank?  }

	def self.search(params)
		with_translations(I18n.locale)
			.for_year(params[:year])
			.for_match(params[:match_id])
			.for_opponent(params[:opponent])
			.ordered
	end

	def round_name
		return I18n.t('activerecord.attributes.admin/matchvideo.final') if final?
		return I18n.t('activerecord.attributes.admin/matchvideo.semi_final') if semi_final?
		return I18n.t('activerecord.attributes.admin/matchvideo.quarter_final') if quarter_final?
		I18n.t('activerecord.attributes.admin/matchvideo.round_name', round: round) 
	end

	def final?
		(match.grand_slam? && round == 7) || (!match.grand_slam? && round == 6)
	end

	def semi_final?
		(match.grand_slam? && round == 6) || (!match.grand_slam? && round == 5)
	end

	def quarter_final?
		(match.grand_slam? && round == 5) || (!match.grand_slam? && round == 4)
	end

	

end
