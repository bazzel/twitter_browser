class TwitterUserSerializer < ActiveModel::Serializer
  attributes :userName, :fullName, :location, :bio, :profileImageUrl, :tweetCount, :followersCount, :followingCount
end
