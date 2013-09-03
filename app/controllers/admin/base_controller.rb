class Admin::BaseController < ApplicationController

		before_action :authenticate

		private
			
			def authenticate
				authenticate_or_request_with_http_basic do |username, password|
					session[:admin] = (username == 'admin' && encrypt(password) == 'ae4fd67d5dedbdcfaed6718b60baf40cc8d6a93a9c003f689b0813cb0010e289')
				end
			end

			def encrypt(password)
				salt = '*&^%$#@'
				Digest::SHA2.hexdigest "#{salt}#{password}"
			end

end
