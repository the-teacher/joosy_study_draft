Joosy.namespace 'Welcome', ->
  class @PostsPage extends ApplicationPage
    @layout ApplicationLayout
    @view   'posts'

    @mapElements
      content: '#content'
      posts:   '.posts'

    @beforeLoad (complete) ->
      log 'P::beforeLoad'

    @fetch (complete) ->
      log 'P::fetch ' + (new Date).toTimeString()
      do complete

    @afterLoad ->
      @show_posts()

    @erase (complete) ->
      log 'P::erase'
      do complete

    show_posts: ->
      log 'P::Show posts', @$posts()