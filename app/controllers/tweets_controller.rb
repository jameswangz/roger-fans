class TweetsController < ApplicationController

	def index
		client = Twitter::REST::Client.new do |config|
			config.consumer_key        = "TGyvRPlJuOO8yRI31LcMrw"
			config.consumer_secret     = "aZTdKzlygUipmb6Boh11ytz6PXFyZCG9j7l9Wf7vrI8"
			config.access_token        = "20516333-qCLtTxGsw0Mt1l7FteyvKGsleTBSQE4ZDOcDtWQcW"
			config.access_token_secret = "UXacI1BbPc6GWvKVMQPd2c6qcV4vnnhzasNs04O1H8"
		end
		
		@tweets = client.user_timeline('rogerfederer')

	end

end
