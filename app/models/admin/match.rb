class Admin::Match < ActiveRecord::Base

	translates :name
	validates :name, presence: true
	validates :ordinal, presence: true, uniqueness: true
	default_scope -> { order('ordinal')  }
	has_many :videos, class_name: 'Admin::MatchVideo', foreign_key: 'match_id', dependent: :restrict_with_exception

end
