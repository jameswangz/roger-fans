require 'spec_helper'

describe Admin::Match do

	describe 'videos dependent restrict' do
		before do
			@match = Admin::Match.create!(ordinal: 1) 
			@match.videos.create!(year: 2013, round: 1) 
		end

		it 'should not be allowed to be destroyed' do
			expect { @match.destroy! }.to raise_error(ActiveRecord::DeleteRestrictionError)
		end
		
	end

end
