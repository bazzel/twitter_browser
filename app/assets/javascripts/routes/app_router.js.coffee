App.Router = Em.Router.extend
  enableLogging: true
  location: 'hash'
  root: Em.Route.extend
    index: Em.Route.extend
      route: '/'
      redirectsTo: 'search'
    search: Em.Route.extend
      route: '/search'
      index: Em.Route.extend
        route: '/'
        connectOutlets: (router) ->
          router.get('applicationController').connectOutlet('search')
      displayUserProfile: Em.Route.extend
        route: '/:name'
        connectOutlets: (router, context) ->
          user = new App.User()
          router.get('applicationController').connectOutlet('user', user)
