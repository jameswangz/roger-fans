class VideosController < ApplicationController

	def index
		@match_videos = Admin::MatchVideo.all
	end

	def watch
		@video = Admin::MatchVideo.find params[:id]
		render 'shared/watch'
	end


end
