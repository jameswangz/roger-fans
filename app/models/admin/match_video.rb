class Admin::MatchVideo < ActiveRecord::Base

	belongs_to :match
	translates :opponent
	default_scope -> { joins(:match).order('year DESC, admin_matches.ordinal DESC, round DESC')  }

end