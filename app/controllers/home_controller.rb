class HomeController < ApplicationController

	def index
		@index_message = I18n.t 'index_message'
	end

end

