class TweetsController < ApplicationController

	def index
		client = Twitter::REST::Client.new do |config|
			config.consumer_key        = "TGyvRPlJuOO8yRI31LcMrw"
			config.consumer_secret     = "aZTdKzlygUipmb6Boh11ytz6PXFyZCG9j7l9Wf7vrI8"
			config.access_token        = "20516333-qCLtTxGsw0Mt1l7FteyvKGsleTBSQE4ZDOcDtWQcW"
			config.access_token_secret = "UXacI1BbPc6GWvKVMQPd2c6qcV4vnnhzasNs04O1H8"
		end
		
		default_options = { count: 100 }
		options = { }
		options.merge! default_options
		options[:max_id] = params[:max_id] if params[:max_id]
		options[:since_id] = params[:since_id] if params[:since_id]
		@tweets = client.user_timeline('rogerfederer', options)
		@tweets = client.user_timeline('rogerfederer', default_options) if @tweets.empty?
		unless @tweets.empty?
			@min_id = @tweets.last.id
			@max_id = @tweets.first.id
		end
	end
end
