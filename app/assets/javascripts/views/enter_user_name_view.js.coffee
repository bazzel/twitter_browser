App.EnterUserNameView = Em.TextField.extend
  insertNewline: ->
    App.router.transitionTo('displayUserProfile',
      name: @get('value')
    )

