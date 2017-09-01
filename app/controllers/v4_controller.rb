class V4Controller < ApplicationController
  def home
  end
  
  def self.threeTweets
    client.search("to:YosemiteNPS snow", result_type: "recent").take(3).collect do |tweet|
        "#{tweet.user.screen_name}: #{tweet.text}"
    end
    # @tweets = tweets.statuses
  end
  
  def self.our_public_tweets
    client.user_timeline("BBCNews", count:1, exclude_replies: true, include_rts: false)
  end
  
  def self.client
    require "twitter"
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "CmEqdJNh4H7HYo8820JqGf132"
      config.consumer_secret     = "aIrfno8BycMDkHUHoetsXGWqXpcEU4B1FsZz9B4D17Rd4cVOjg"
      config.access_token        = "884061254087659520-GeBwHLzWHs9EU2EVlSEAjd9MgHObnEG"
      config.access_token_secret = "InL6CzDvoszb35W9sWPhIc4fLRZ5gsicJZKyWxUacVQmR"
    end
  end

  def twilio
  end
end
