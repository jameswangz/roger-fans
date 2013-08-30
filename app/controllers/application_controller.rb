class ApplicationController < ActionController::Base
  	# Prevent CSRF attacks by raising an exception.
  	# For APIs, you may want to use :null_session instead.
  	protect_from_forgery with: :exception

	before_action :set_locale

	private

		def set_locale
    		available = %w{en, zh-CN}
    		language = env.http_accept_language.compatible_language_from(available)
			I18n.locale = language || I18n.default_locale	
		end

end
