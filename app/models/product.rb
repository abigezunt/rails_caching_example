class Product < ActiveRecord::Base
	has_many :reviews

	def tweets
		TwitterClient.user_timeline(twitter_user).map(&:text)
	end
	
end
