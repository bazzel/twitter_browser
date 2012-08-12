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
      displayUserProfile: Em.Route.extend
        route: '/:name'
        connectOutlets: (router, context) ->
          name = context.name
          user = App.User.find(name)
          router.get('applicationController').connectOutlet('user', user)
