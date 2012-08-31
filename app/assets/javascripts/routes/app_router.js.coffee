App.Router = Em.Router.extend
  enableLogging: true
  location: 'hash'
  root: Em.Route.extend
    # EVENTS
    backToSearch: Em.Route.transitionTo 'index'
    # STATES
    index: Em.Route.extend
      route: '/'
      redirectsTo: 'search.index'
    search: Em.Route.extend
      route: '/search'
      index: Em.Route.extend
        route: '/'
        connectOutlets: (router) ->
          router.get('applicationController').connectOutlet('search')
      showUser: (router, event) ->
        router.transitionTo 'displayUserProfile', event
      displayUserProfile: Em.Route.extend
        route: '/:username'
        connectOutlets: (router, context) ->
          username = context.username
          user = App.User.find(username)
          router.get('applicationController').connectOutlet('user', user)
