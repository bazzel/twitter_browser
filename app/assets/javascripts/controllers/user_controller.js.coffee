App.UserController = Em.ObjectController.extend
  biggerProfileImageUrl: (->
    url = @get('profileImageUrl')
    if url then url.replace('normal', 'bigger') else ''
  ).property('profileImageUrl')
