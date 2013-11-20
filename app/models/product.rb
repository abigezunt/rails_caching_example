class Product < ActiveRecord::Base
	has_many :reviews

	def tweets
		Rails.cache.fetch(["tweets", self.twitter_name], expires_in: 30.seconds) do
		  TwitterClient.user_timeline(twitter_name).map(&:text)
	  end
	end
	
end
