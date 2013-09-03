namespace :db do
	desc 'Fill database with sample data'
	task populate: :environment do
		make_matches
		make_match_videos
	end

	def make_matches
		@australia_open = Admin::Match.create!(name: 'Australia Open', ordinal: 5)	
		@australia_open.update_attributes(name: '澳网', locale: 'zh-CN')
		@french_open = Admin::Match.create!(name: 'French Open', ordinal: 10)	
		@french_open.update_attributes(name: '法网', locale: 'zh-CN')
		@wimbledon = Admin::Match.create!(name: 'Wimbledon', ordinal: 15)	
		@wimbledon.update_attributes(name: '温网', locale: 'zh-CN')
		@us_open = Admin::Match.create!(name: 'US Open', ordinal: 20)	
		@us_open.update_attributes(name: '美网', locale: 'zh-CN')
	end

	def make_match_videos
		video = @us_open.videos.create!(year: 2013, round: 1, url: 'http://tv.cntv.cn/video/VSET100150752057/8f30196e18e247809d30d12ade7b74eb/', opponent: 'Zhemiya')
		video.update_attributes(opponent: '泽米亚', locale: 'zh-CN')
		video = @french_open.videos.create!(year: 2013, round: 4, url: 'http://player.youku.com/embed/XNTY2Njc5OTE2e>', opponent: 'Simeon')
		video.update_attributes(opponent: '西蒙', locale: 'zh-CN')
		video = @french_open.videos.create!(year: 2013, round: 3, url: 'http://player.youku.com/embed/XNTY1MDAwNjMy', opponent: 'BeiNeiTeWu')
		video.update_attributes(opponent: '贝内特乌', locale: 'zh-CN')
	end

end
