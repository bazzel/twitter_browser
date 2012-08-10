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
    displayUserProfile: Em.Route.extend
      route: '/searchforuser/:name'
      connectOutlets: (router, context) ->
        router.get('applicationController').connectOutlet('searchForUser')
      # serialize: (router, context) ->
      #   console.log 'serialize', arguments
      #   name: context.name
      # deserialize: (router, params) ->
      #   console.log 'deserialize', arguments
      #   name: params.name


