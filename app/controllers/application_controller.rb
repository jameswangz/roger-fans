class ApplicationController < ActionController::Base
  	# Prevent CSRF attacks by raising an exception.
  	# For APIs, you may want to use :null_session instead.
  	protect_from_forgery with: :exception

	before_action :set_locale

	def default_url_options(options={})
		logger.debug "options === #{options}"
	  	options.merge!( { locale: I18n.locale } )
	end

	private

		def set_locale
			locale = params[:locale]
			unless locale
    			available = %w{en, zh-CN}
    			locale = env.http_accept_language.compatible_language_from(available)
			end
			I18n.locale = locale || I18n.default_locale	
		end

end
