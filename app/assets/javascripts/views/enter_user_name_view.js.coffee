App.EnterUserNameView = Em.TextField.extend
  placeholder: 'Enter Twitter User Name'
  insertNewline: ->
    @get('controller.target').send 'showUser',
      username: @get('value')

