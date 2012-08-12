class TwitterUser
  attr_reader \
    :user_name,
    :full_name,
    :guid,
    :location,
    :bio,
    :profile_image_url,
    :tweet_count,
    :followers_count,
    :following_count,
    :tweets

  def initialize(user_identifier)
    user_response = Twitter.user(user_identifier)
    tweets_response = Twitter.user_timeline(user_identifier, :include_rts => true)

    @user_name = user_response.screen_name
    @full_name = user_response.name
    @guid = user_response.id
    @location = user_response.location
    @bio = user_response.description
    @profile_image_url = user_response.profile_image_url
    @tweet_count = user_response.statuses_count
    @followers_count = user_response.followers_count
    @following_count = user_response.friends_count
    @tweets = tweets_response.collect{|tweet| {:text => tweet[:text]}}
  end

  def to_json(*a)
    arr = instance_variables.inject([]) do |array, v|
      key = v.to_s.gsub(/@/, '')
      array << key << send(key.to_sym)
    end

    { user: Hash[*arr] }.to_json
  end
end
