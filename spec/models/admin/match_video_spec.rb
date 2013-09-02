require 'spec_helper'

describe Admin::MatchVideo do

	describe 'expected order' do

		before do
			@match1 = Admin::Match.create!(ordinal: 1) 
			@match2 = Admin::Match.create!(ordinal: 2) 
			@video_2013_match1_round1 =   @match1.videos.create!(year: 2013, round: 1) 
			@video_2013_match1_round2 =   @match1.videos.create!(year: 2013, round: 2) 
			@video_2013_match2_round1 =   @match2.videos.create!(year: 2013, round: 1) 
			@video_2013_match2_round2 =   @match2.videos.create!(year: 2013, round: 2) 
			@video_2006_match1_round1 =   @match1.videos.create!(year: 2006, round: 1) 
			@video_2006_match1_round2 =   @match1.videos.create!(year: 2006, round: 2) 
			@video_2006_match2_round1 =   @match2.videos.create!(year: 2006, round: 1) 
			@video_2006_match2_round2 =   @match2.videos.create!(year: 2006, round: 2) 
		end

		it 'should ordered by expectation' do
			videos = Admin::MatchVideo.all
			expect(videos).to eq [
				@video_2013_match2_round2,
				@video_2013_match2_round1,
				@video_2013_match1_round2,
				@video_2013_match1_round1,
				@video_2006_match2_round2,
				@video_2006_match2_round1,
				@video_2006_match1_round2,
				@video_2006_match1_round1
			] 
		end

	end

end