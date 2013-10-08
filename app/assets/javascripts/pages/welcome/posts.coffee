Joosy.namespace 'Welcome', ->
  class @PostsPage extends ApplicationPage
    @layout ApplicationLayout
    @view   'posts'
    @mapElements
      content: '#content'
      posts:   '.posts'

    @fetch (complete) ->
      log 'Fetch!'
      Post.find '1', (posts) =>
        @data.posts = posts
        complete()

    @beforeLoad ->
      Post.all [],
        params:
          page: 1
        (error, posts) =>
          @data.posts = posts
      log 'P::beforeLoad'

    @fetch (complete) ->
      do complete

    @afterLoad ->
      @show_posts()

    @erase (complete) ->
      log 'P::erase'
      do complete

    show_posts: ->
      log 'P::Show posts', @data, @$posts()