App.User = DS.Model.extend
  primaryKey: 'user_name'
  profileImageUrl: DS.attr('string')
  fullName: DS.attr('string')
  userName: DS.attr('string')
  location: DS.attr('string')
  bio: DS.attr('string')
  tweetCount: DS.attr('number')
  followingCount: DS.attr('number')
  followersCount: DS.attr('number')

