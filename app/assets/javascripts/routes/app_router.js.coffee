App.Router = Em.Router.extend
  enableLogging: true
  location: 'hash'
  root: Em.Route.extend
    index: Em.Route.extend
      route: '/'
      redirectsTo: 'search'
  search: Em.Route.extend
    route: '/search'
    connectOutlets: (router) ->
      router.get('applicationController').connectOutlet('search')


