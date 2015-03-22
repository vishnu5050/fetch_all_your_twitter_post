class TwitterController < ApplicationController
    require 'twitter'
    def get_tweet
        @client = Twitter::REST::Client.new do |config|
        config.consumer_key        = "0WUGqHs12JPYvKaEesBGWfrmY"
        config.consumer_secret     = "M5njf5lQ4NMVbrf1fe4kPHdXCggpEoFyKEuhsDywa06bQRZ8x9"
        config.access_token        = current_user.access_token
        config.access_token_secret = current_user.twitter_secret
    end
    end
    
end
