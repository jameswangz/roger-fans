class VideosController < ApplicationController

	def index
		@match_videos = Admin::MatchVideo.search params
	end

	def watch
		@video = Admin::MatchVideo.find params[:id]
		render 'shared/watch'
	end


end
