namespace :db do
	desc 'Fill database with sample data'
	task populate: :environment do
		make_matches
		make_match_videos
	end

	def make_matches
		@australia_open = Admin::Match.create!(name: 'Australia Open', ordinal: 10, grand_slam: true)	
		@australia_open.update_attributes(name: '澳网', locale: 'zh-CN', grand_slam: true)
		@french_open = Admin::Match.create!(name: 'French Open', ordinal: 20, grand_slam: true)	
		@french_open.update_attributes(name: '法网', locale: 'zh-CN', grand_slam: true)
		@wimbledon = Admin::Match.create!(name: 'Wimbledon', ordinal: 30, grand_slam: true)	
		@wimbledon.update_attributes(name: '温网', locale: 'zh-CN', grand_slam: true)
		@us_open = Admin::Match.create!(name: 'US Open', ordinal: 40, grand_slam: true)	
		@us_open.update_attributes(name: '美网', locale: 'zh-CN', grand_slam: true)
	end

	def make_match_videos
		video = @us_open.videos.create!(year: 2013, round: 3, url: 'http://player.youku.com/embed/XNjA0NzIwMjE2', opponent: 'Mannarino')
		video.update_attributes(opponent: '马纳里诺', locale: 'zh-CN')
		video = @us_open.videos.create!(year: 2013, round: 1, url: 'http://tv.cntv.cn/video/VSET100150752057/8f30196e18e247809d30d12ade7b74eb/', opponent: 'Zhemiya')
		video.update_attributes(opponent: '泽米亚', locale: 'zh-CN')
		video = @french_open.videos.create!(year: 2013, round: 4, url: 'http://player.youku.com/embed/XNTY2Njc5OTE2e>', opponent: 'Simon')
		video.update_attributes(opponent: '西蒙', locale: 'zh-CN')
		video = @french_open.videos.create!(year: 2013, round: 3, url: 'http://player.youku.com/embed/XNTY1MDAwNjMy', opponent: 'J.Benneteau')
		video.update_attributes(opponent: '贝内特乌', locale: 'zh-CN')
		video = @french_open.videos.create!(year: 2013, round: 2, url: 'http://player.youku.com/embed/XNTY0NzE3MTIw', opponent: 'Somdev Devvarman')
		video.update_attributes(opponent: '印度男', locale: 'zh-CN')
		video = @french_open.videos.create!(year: 2013, round: 1, url: 'http://player.youku.com/embed/XNTYyODYzMjc2', opponent: 'Pablo Carreno-Busta')
		video.update_attributes(opponent: '资格赛选手', locale: 'zh-CN')
		video = @australia_open.videos.create!(year: 2013, round: 6, url: 'http://player.youku.com/embed/XNTA3NDYxNDMy', opponent: 'Andy Murry')
		video.update_attributes(opponent: '穆雷', locale: 'zh-CN')
		video = @australia_open.videos.create!(year: 2013, round: 5, url: 'http://player.youku.com/embed/XNTA2NDMyODU2', opponent: 'Tsonga')
		video.update_attributes(opponent: '特松加', locale: 'zh-CN')
		video = @australia_open.videos.create!(year: 2013, round: 4, url: 'http://player.youku.com/embed/XNTA1MjAyNTc2', opponent: 'Milos Raonic')
		video.update_attributes(opponent: '拉奥尼奇', locale: 'zh-CN')
		video = @australia_open.videos.create!(year: 2013, round: 3, url: 'http://player.youku.com/embed/XNTA0Mzk0NjM2', opponent: 'Tomic')
		video.update_attributes(opponent: '托米奇', locale: 'zh-CN')
		video = @australia_open.videos.create!(year: 2013, round: 2, url: 'http://player.youku.com/embed/XNTA0Mzc5MTg4', opponent: 'Nikolay Davydenko')
		video.update_attributes(opponent: '达维登科', locale: 'zh-CN')
		video = @australia_open.videos.create!(year: 2013, round: 1, url: 'http://player.youku.com/embed/XNTAyNjQyNjAw', opponent: 'Pair')
		video.update_attributes(opponent: '佩尔', locale: 'zh-CN')
		video = @wimbledon.videos.create!(year: 2012, round: 7, url: 'http://player.youku.com/embed/XNDI2Mzc4MzU2', opponent: 'Andy Murry')
		video.update_attributes(opponent: '穆雷', locale: 'zh-CN')
		video = @australia_open.videos.create!(year: 2010, round: 7, url: 'http://player.youku.com/embed/XMzMxNzM4MzQ4', opponent: 'Andy Murry')
		video.update_attributes(opponent: '穆雷', locale: 'zh-CN')
		video = @us_open.videos.create!(year: 2009, round: 7, url: 'http://player.youku.com/embed/XMjk3OTk1NjMy', opponent: 'Del Potro')
		video.update_attributes(opponent: '德尔波特罗', locale: 'zh-CN')
		video = @us_open.videos.create!(year: 2009, round: 6, url: 'http://player.youku.com/embed/XMTE5MjkyNTg0', opponent: 'Djokovic')
		video.update_attributes(opponent: '德约科维奇', locale: 'zh-CN')
		video = @french_open.videos.create!(year: 2009, round: 7, url: 'http://player.youku.com/embed/XMjk3OTk1NjMy', opponent: 'Robin Soderling')
		video.update_attributes(opponent: '索德林', locale: 'zh-CN')
		video = @wimbledon.videos.create!(year: 2009, round: 7, url: 'http://player.youku.com/embed/XMjQ0MzIyMDA4', opponent: 'Andy Roddick')
		video.update_attributes(opponent: '罗迪克', locale: 'zh-CN')
		video = @australia_open.videos.create!(year: 2009, round: 7, url: 'http://player.youku.com/embed/XNTYzMjE0MTky', opponent: 'Rafael Nadal')
		video.update_attributes(opponent: '纳达尔', locale: 'zh-CN')
	end

end
